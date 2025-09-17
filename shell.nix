{
  pg_version ? "10",
  pkgs ? import <nixpkgs> { },
}:
let
  # update gemset.nix with bundix -l
  # e.g. nix-shell --run 'bundix -l' && nix-shell --run bundle exec jekyll serve
  gems = pkgs.bundlerEnv {
    name = "gems-for-some-project";
    gemdir = ./.;
  };
in
pkgs.mkShell {
  packages = [
    pkgs.bundix
    gems
    gems.wrappedRuby
    pkgs.importNpmLock.hooks.linkNodeModulesHook
    pkgs.nodejs
  ];

  npmDeps = pkgs.importNpmLock.buildNodeModules {
    npmRoot = ./.;
    nodejs = pkgs.nodejs;
  };
}
