{
  description = "Daniel Woffinden's personal site built with Zola";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    zola-hallo = {
      url = "git+https://codeberg.org/janbaudisch/zola-hallo?lfs=1";
      flake = false;
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      zola-hallo,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        # TODO: read the toml for the theme name
        # https://ilanjoselevich.com/blog/building-websites-using-nix-flakes-and-zola
        themeName = "hallo";
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
            zola build
          '';

          installPhase = ''
            cp -r public $out
          '';
        };

        devShells.default = pkgs.mkShell {
          packages = [ pkgs.zola ];
          shellHook = ''
            mkdir -p themes
            if [[ ! -d themes/${themeName} ]]; then
              cp -r --no-preserve=mode,ownership ${zola-hallo} themes/${themeName}
            fi
            echo "Zola dev shell loaded. Run 'zola serve' to start."
          '';
        };
      }
    );
}
