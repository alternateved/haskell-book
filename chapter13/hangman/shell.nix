{ nixpkgs ? import (fetchTarball
  "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz") { } }:

let
  inherit (nixpkgs) pkgs;
  inherit (pkgs) haskellPackages;

  package = import ./. pkgs;

  haskellTools = with haskellPackages; [ ghc ghcid cabal-install ];

in pkgs.stdenv.mkDerivation {
  name = "hangmanShell";
  inputsFrom = [ package.env ];
  buildInputs = haskellTools;
  shellHook = ''
    export PS1="\[hs:\033[1;32m\]\W\[\033[0m\] ~ "
  '';
}
