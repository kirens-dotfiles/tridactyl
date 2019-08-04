#!/usr/bin/env nix-shell
#! nix-shell -i bash -p yarn2nix coreutils

if out=`nix-build -A yarnLock --no-out-link`
then
  yarn2nix \
    --lockfile "$(echo $out | tail -n 1)" \
    --no-patch \
    --keep-going \
    > packages.new.nix 2> tmp

  mv packages.new.nix packages.nix
else
  echo Could not patch lockfile! >&2
  echo Build output was: >&2
  echo "$out" >&2
fi
