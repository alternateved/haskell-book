{ nixpkgs ? import <nixpkgs> { } }:
let
  inherit (nixpkgs) pkgs;
  inherit (pkgs) haskellPackages;

  haskellDeps = ps: with ps; [ base protolude containers ];

  ghc = haskellPackages.ghcWithPackages haskellDeps;

  nixPackages = [ ghc pkgs.gdb haskellPackages.cabal-install ];
in pkgs.stdenv.mkDerivation {
  name = "env";
  buildInputs = nixPackages;
  shellHook = ''
    export PS1="\n\[[hs:\033[1;32m\]\W\[\033[0m\]]> "
  '';
}
