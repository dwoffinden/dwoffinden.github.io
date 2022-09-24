{ pg_version ? "10", pkgs ? import <nixpkgs> { }, system ? builtins.currentSystem }:
let
  # update gemset.nix with bundix -l
  # e.g. nix-env --install bundix && bundix -l && nix-shell --run bundle exec jekyll serve
  gems = pkgs.bundlerEnv {
    name = "gems-for-some-project";
    gemdir = ./.;
  };
  nodePackages = import ./default.nix { inherit pkgs system; };
in
pkgs.mkShell {
  packages = [ gems gems.wrappedRuby ];
  shellHook = ''
    ln -sfT ${nodePackages.nodeDependencies}/lib/node_modules node_modules
  '';
}
