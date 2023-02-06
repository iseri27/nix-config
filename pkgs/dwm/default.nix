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
        rev = "461b3273828c982cdb6f50193d7a5e4684ea0b9d";
        fetchSubmodules = false;
        sha256 = "sha256-60IIqGWnxr3ZocGaStvArJPL4i871UNULrzJJZuAfiM=";
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
