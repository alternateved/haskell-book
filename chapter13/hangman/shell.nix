{ nixpkgs ? import (fetchTarball
  "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz") { } }:

let
  inherit (nixpkgs) pkgs;
  inherit (pkgs) haskellPackages;

  haskellTools = with haskellPackages; [ ghc ghcid cabal-install ];

  haskellDeps = with haskellPackages; [ random split ];

  allPackages = haskellTools ++ haskellDeps;

in pkgs.stdenv.mkDerivation {
  name = "hangmanShell";
  buildInputs = allPackages;
  shellHook = ''
    export PS1="\[hs:\033[1;32m\]\W\[\033[0m\] ~ "
  '';
}
