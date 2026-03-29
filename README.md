# Source for https://daw.dev

Built with [Zola](https://getzola.org/) and [Nix](https://nixos.org/). Theme based on [Hallo](https://codeberg.org/janbaudisch/zola-hallo/).

## Local Development

Either use [nix-direnv](https://github.com/nix-community/nix-direnv) or run `nix develop` to enter a shell with `zola` and the dependencies available.

Run `zola serve` to preview the site locally. The site will be available at `http://localhost:1111`.

`zola build` will build the site in `./public`.

## Building

Run `nix build`, the output will be in `./result`.

## Deploying

The GitHub Action in `.github/workflows/deploy.yml` builds the site with `nix build` as above and pushes to GH Pages.