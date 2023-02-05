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
        rev = "74fcc0f2df27c980be1a3d38d42d0e62aa24340d";
        fetchSubmodules = false;
        sha256 = "sha256-bTLg8BqT2jPZKXTsWwycqPWlTcso+kPZe5I4OlF4A1Y=";
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
