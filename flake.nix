{
  description = "Daniel Woffinden's personal site built with Zola";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    git-hooks.url = "github:cachix/git-hooks.nix";
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
      flake-utils,
      git-hooks,
      zola-hallo,
      font-awesome,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        # TODO: read the toml for the theme name
        # https://ilanjoselevich.com/blog/building-websites-using-nix-flakes-and-zola
        themeName = "hallo";
        pre-commit-check = git-hooks.lib.${system}.run {
          src = ./.;
          hooks = {
            mdformat.enable = true;
            nixfmt-rfc-style.enable = true;
          };
        };
      in
      {
        packages.default = pkgs.stdenv.mkDerivation {
          name = "dwoffinden-github-io";
          src = ./.;
          nativeBuildInputs = [ pkgs.zola ];

          buildPhase = ''
            mkdir -p themes/${themeName}
            cp -r ${zola-hallo}/* themes/${themeName}/
            chmod -R +w .
            rm -rf themes/${themeName}/static/fontawesome
            mkdir -p fa-svgs
            cp \
              ${font-awesome}/svgs/brands/{github,facebook,keybase,linkedin,stack-overflow}.svg \
              ${font-awesome}/svgs/solid/{key,code,copy,check}.svg \
              fa-svgs/
            zola build
          '';

          installPhase = ''
            cp -r public $out
          '';
        };

        checks = {
          inherit pre-commit-check;
        };

        formatter =
          let
            config = self.checks.${system}.pre-commit-check.config;
            script = ''
              ${pkgs.lib.getExe config.package} run --all-files --config ${config.configFile}
            '';
          in
          pkgs.writeShellScriptBin "pre-commit-run" script;

        devShells.default = pkgs.mkShell {
          buildInputs = pre-commit-check.enabledPackages;
          packages = [ pkgs.zola ];
          shellHook = ''
            ${pre-commit-check.shellHook}
            mkdir -p themes
            if [[ ! -f themes/${themeName}/.source-path ]] || [[ "$(cat themes/${themeName}/.source-path)" != "${zola-hallo}" ]]; then
              rm -rf themes/${themeName}
              cp -r --no-preserve=mode,ownership ${zola-hallo} themes/${themeName}
              rm -rf themes/${themeName}/static/fontawesome
              echo "${zola-hallo}" > themes/${themeName}/.source-path
            fi
            if [[ ! -f fa-svgs/.source-path ]] || [[ "$(cat fa-svgs/.source-path)" != "${font-awesome}" ]]; then
              rm -rf fa-svgs
              mkdir -p fa-svgs
              cp \
                ${font-awesome}/svgs/brands/{github,facebook,keybase,linkedin,stack-overflow}.svg \
                ${font-awesome}/svgs/solid/{key,code,copy,check}.svg \
                fa-svgs/
              echo "${font-awesome}" > fa-svgs/.source-path
            fi
            echo "Zola dev shell loaded. Run 'zola serve' to start."
          '';
        };
      }
    );
}
