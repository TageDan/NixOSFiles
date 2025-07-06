# package for breath of the wild style font (made by Chequered Ink) 

{ pkgs }:

pkgs.stdenv.mkDerivation {
  pname = "the-wild-breath-of-zelda-font";
  version = "1.001";

  src = ./the-wild-breath-of-zelda.zip;

  unpackPhase = ''
    runHook preUnpack

    ${pkgs.unzip}/bin/unzip $src -d the-wild-breath-of-zelda

    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/fonts/truetype
    cp the-wild-breath-of-zelda/*.otf $out/share/fonts/truetype

    runHook postInstall 
  '';
}
