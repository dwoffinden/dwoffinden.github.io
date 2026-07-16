{
  description = "Daniel Woffinden's personal site built with Zola";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    git-hooks.url = "github:cachix/git-hooks.nix";
    git-hooks.inputs.nixpkgs.follows = "nixpkgs";
    flint.url = "github:notashelf/flint";
    flint.inputs.nixpkgs.follows = "nixpkgs";
    zola-hallo = {
      url = "git+https://codeberg.org/janbaudisch/zola-hallo?lfs=1";
      flake = false;
    };
    font-awesome = {
      url = "github:FortAwesome/Font-Awesome";
      flake = false;
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      git-hooks,
      flint,
      zola-hallo,
      font-awesome,
      ...
    }:
    let
      forEachSystem = nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed;
      pkgsFor = system: nixpkgs.legacyPackages.${system};

      # TODO: read the toml for the theme name
      # https://ilanjoselevich.com/blog/building-websites-using-nix-flakes-and-zola
      themeName = "hallo";

      copyTheme = ''
        mkdir -p themes
        rm -rf themes/${themeName}
        cp -r --no-preserve=mode,ownership ${zola-hallo} themes/${themeName}
        rm -rf themes/${themeName}/static/fontawesome
      '';

      copyIcons = ''
        rm -rf fa-svgs
        mkdir -p fa-svgs
        cp --no-preserve=mode,ownership \
          ${font-awesome}/svgs/{brands/{github,facebook,keybase,linkedin,stack-overflow,matrix},solid/{key,code,copy,check}}.svg \
          fa-svgs/
      '';
    in
    {
      packages = forEachSystem (
        system:
        let
          pkgs = pkgsFor system;
        in
        {
          default = pkgs.stdenv.mkDerivation {
            name = "dwoffinden-github-io";
            src = ./.;
            nativeBuildInputs = [ pkgs.zola ];

            buildPhase = ''
              ${copyTheme}
              ${copyIcons}
              zola build
              rm public/{,images/}portrait.jpg
              rmdir public/images
            '';

            installPhase = ''
              cp -r public $out
            '';
          };
        }
      );

      checks = forEachSystem (system: {
        pre-commit-check = git-hooks.lib.${system}.run {
          src = ./.;
          hooks = {
            mdformat.enable = true;
            nixfmt-rfc-style.enable = true;
            flint = {
              enable = true;
              name = "flint";
              entry = "${flint.packages.${system}.default}/bin/flint --fail-if-multiple-versions";
              files = "flake\\.(nix|lock)$";
            };
            yamlfmt = {
              enable = true;
              settings.lint-only = false;
            };
          };
        };
      });

      formatter = forEachSystem (
        system:
        let
          pkgs = pkgsFor system;
          config = self.checks.${system}.pre-commit-check.config;
          script = ''
            ${pkgs.lib.getExe config.package} run --all-files --config ${config.configFile}
          '';
        in
        pkgs.writeShellScriptBin "pre-commit-run" script
      );

      devShells = forEachSystem (
        system:
        let
          pkgs = pkgsFor system;
          pre-commit-check = self.checks.${system}.pre-commit-check;
        in
        {
          default = pkgs.mkShell {
            buildInputs = pre-commit-check.enabledPackages;
            packages = [
              pkgs.zola
              flint.packages.${system}.default
            ];
            shellHook = ''
              ${pre-commit-check.shellHook}
              if [[ ! -f themes/${themeName}/.source-path ]] || [[ "$(cat themes/${themeName}/.source-path)" != "${zola-hallo}" ]]; then
                ${copyTheme}
                echo "${zola-hallo}" > themes/${themeName}/.source-path
              fi
              if [[ ! -f fa-svgs/.source-path ]] || [[ "$(cat fa-svgs/.source-path)" != "$(echo -e "${font-awesome}")" ]]; then
                ${copyIcons}
                echo -e "${font-awesome}" > fa-svgs/.source-path
              fi
              echo "Zola dev shell loaded. Run 'zola serve' to start."
            '';
          };
        }
      );
    };
}
