{
  stdenv
, fetchFromGitHub
, libX11
, libXinerama
, libXft
, ...
} @args:
stdenv.mkDerivation rec {
    pname = "dmenu";
    version = "5.2";

    src = fetchFromGitHub({
        owner = "corona09";
        repo = "dmenu";
        rev = "4ea10e905935522ed8afab7ced0b0484dc6d418c";
        fetchSubmodules = false;
        sha256 = "sha256-m3QR7zww+vpY9MsM8H6yw9nNDOvkn4GAonW0zV42rdc=";
    });

    buildInputs = [ libX11 libXinerama libXft ];

    prePatch = ''
        sed -i "s@/usr/local@$out@" config.mk
        '';

}
