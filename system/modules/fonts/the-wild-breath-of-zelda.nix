# package for breath of the wild style font (made by Chequered Ink) 

{ pkgs }:

pkgs.stdenv.mkDerivation {
  pname = "the-wild-breath-of-zelda-font";
  version = "1.001";

  src = "./the-wild-breath-of-zelda.zip";

  unpackPhase = ''
    runHook preUnpack

    ${pkgs.unzip}/bin/unzip $src -d the-wild-breath-of-zelda

    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall

    install -Dm644 the-wild-breath-of-zelda/*.otf -t $out/share/fonts/truetype

    runHook postInstall 
  '';
}
