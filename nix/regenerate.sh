#!/usr/bin/env bash
set -euo pipefail
cd $(git rev-parse --show-toplevel)

exec $(nix-build `dirname $0`/. -A bcccoinNix.cabalProjectRegenerate --no-out-link --option substituters "https://hydra.tbco.io https://cache.nixos.org" --option trusted-substituters "" --option trusted-public-keys "hydra.tbco.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ= cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY=")/bin/cabal-project-regenerate
