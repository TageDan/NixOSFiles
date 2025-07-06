

{ pkgs }:

pkgs.stdenv.mkDerivation {
  pname = "hylia-serif";
  version = "1.001";

  src = ./hylia-serif.zip;

  unpackPhase = ''
    runHook preUnpack

    ${pkgs.unzip}/bin/unzip $src -d hylia-serif

    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/fonts/truetype
    cp hylia-serif/Hylia\ Serif\ Beta\ v0-009 $out/share/fonts/truetype

    runHook postInstall 
  '';
}
