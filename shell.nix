{ pg_version ? "10", pkgs ? import <nixpkgs> { } }:
let
  gems = pkgs.bundlerEnv {
    name = "gems-for-some-project";
    gemdir = ./.;
  };
in pkgs.mkShell { packages = [ gems gems.wrappedRuby ]; }
