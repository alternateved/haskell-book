{ pkgs ? import (fetchTarball
  "https://github.com/NixOS/nixpkgs/archive/9bf75dd50b7b6d3ce6aaf6563db95f41438b9bdb.tar.gz")
  { } }:

let
  haskellTools = with pkgs; [
    ghc
    ghcid
    cabal-install
    haskellPackages.hindent
    haskellPackages.hoogle
    haskellPackages.ormolu
    haskellPackages.haskell-language-server
  ];

  haskellDeps = with pkgs; [ ];

in pkgs.mkShell {
  buildInputs = haskellTools ++ haskellDeps;
  shellHook = ''
    export PS1="\[hs:\033[1;32m\]\W\[\033[0m\] ~ "
  '';
}
