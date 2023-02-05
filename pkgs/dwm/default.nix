{
  stdenv
, fetchFromGitHub
, libX11
, libXft
, libXext
, libXinerama
, ...
} @args:

stdenv.mkDerivation rec {
    pname = "dwm";
    version = "6.4";

    src = fetchFromGitHub ({
        owner = "corona09";
        repo = "dwm";
        rev = "be905f0a6979ca1ca0de70ab4db6c2c971f8ee5e";
        fetchSubmodules = false;
        sha256 = "sha256-Hk/ix2nIJ/tDyzYeMgLyUy5+XGRWXDpkXlBxoCpxzX0=";
    });

    buildInputs = [
        libX11 libXft libXext libXinerama
    ];

    prePatch = ''
        sed -i "s@/usr/local@$out@" config.mk
        sed -i "s@/usr/local/bin@$out/scripts@" config.mk
        patch < ${./fix-makefile.diff}
        '';

    makeFlags = [ "CC=${stdenv.cc.targetPrefix}cc" ];

    postInstall = ''
        mkdir -p $out/scripts
        cp scripts/* $out/scripts
        chmod 755 $out/scripts/*
        '';
}
