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
        rev = "6202291fbfebe3d700899f8e0c892a3bcf93a36a";
        fetchSubmodules = false;
        sha256 = "sha256-EM3LdeKwSiAz5GhX4DGdEkvAZ4HR6JdozMQ3aoULki0=";
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
