{ pg_version ? "10", pkgs ? import <nixpkgs> { } }:
let
  # update gemset.nix with bundix -l
  # e.g. nix-env --install bundix && bundix -l && nix-shell --run bundle exec jekyll serve
  gems = pkgs.bundlerEnv {
    name = "gems-for-some-project";
    gemdir = ./.;
  };
in
pkgs.mkShell { packages = [ gems gems.wrappedRuby ]; }
