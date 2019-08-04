{ pkgs ? import <nixpkgs> {}
, nodejs ? pkgs.nodejs-10_x
, yarn ? pkgs.yarn.override { inherit nodejs; }
, yarn2nix ? pkgs.yarn2nix.override { inherit nodejs yarn; }
, addonId ? "tridactyl.vim@cmcaine.co.uk.xpi"
}@args: let

  inherit (args // pkgs)
    nodePackages
    python3
    git
    inotify-tools
    runCommand
    ;

  patch = file: patchFile: runCommand "patched" { } ''
    patch --output "$out" ${file} ${patchFile}
  '';

  yarnLock = patch ./yarn.lock ./typedoc.lock.patch;
  packageJSON = patch ./package.json ./typedoc.package.patch;

  package = yarn2nix.mkYarnPackage {
    name = "tridactyl-extension";
    src = ./.;
    inherit yarnLock packageJSON;
    yarnNix = ./packages.nix;
    extraBuildInputs = [
      python3
      nodePackages.typedoc
      inotify-tools
      git
    ];
    pkgConfig = { extraBuildInputs = [ git ]; };
    buildPhase = ''
      echo '--------------- building'
      export YARN_FLAGS="--offline --cache-folder .yarncache"
      export INSTALL_NATIVE="False"
      for file in scripts/*
      do
        patchShebangs "$file"
      done
      sh scripts/build.sh
      "$(yarn bin)/web-ext" -s build/ build
    '';
    installPhase = ''
      echo '--------------- installing'
      dst="$out/share/mozilla/extensions/{ec8030f7-c20a-464f-9b0e-13a3a9e97384}"
      mkdir -p "$dst"
      install -v -m644 web-ext-artifacts/* "$dst/${addonId}.xpi"
    '';
  };

in package // { inherit yarnLock; }
