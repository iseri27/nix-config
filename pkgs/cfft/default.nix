{
  stdenv
, ...
} @args:

stdenv.mkDerivation rec {
    pname = "cfft";
    version = "6.4";

    src = ./cfft.sh;

    dontUnpack = true;
    dontBuild = true;

    installPhase = ''
        install -D -m755 $src $out/bin/cfft
        '';
}
