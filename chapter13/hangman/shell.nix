{ nixpkgs ? import (fetchTarball
  "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz") { } }:

let
  inherit (nixpkgs) pkgs;
  inherit (pkgs) haskellPackages;

  haskellDeps = ps: with ps; [ base protolude containers ];

  ghc = haskellPackages.ghcWithPackages haskellDeps;
  nixPackages = [ ghc pkgs.stack pkgs.gdb ];

in pkgs.haskell.lib.buildStackProject {
  name = "hangmanShell";
  buildInputs = nixPackages;
  shellHook = ''
    export PS1="\n\[hs:\033[1;32m\]\W\[\033[0m\] ~ "
  '';
}

