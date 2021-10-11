let
  pkgs = import ./packages.nix { };
  package = import ./.;

  haskellTools = with pkgs; [ ghc ghcid cabal-install ];

in pkgs.mkShell {
  nativeBuildInputs = [ pkgs.pkg-config ];
  inputsFrom = [ package.env ];
  buildInputs = haskellTools;
  shellHook = ''
    export PS1="\[hs:\033[1;32m\]\W\[\033[0m\] ~ "
  '';
}
