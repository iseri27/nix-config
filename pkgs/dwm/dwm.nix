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
        rev = "324ccac10afe145652d376f9bda82e7b25f143e2";
        fetchSubmodules = false;
        sha256 = "sha256-jtfThKyb9mmAUGBaP11EY0iG35/BLvi1lggEu4n7VRM=";
    });

    buildInputs = [
        libX11 libXft libXext libXinerama
    ];

    enableParallelBuilding = true;

    patchPhase = ''
        patch < ${./fix-makefile.patch}
        '';

    installPhase = ''
        mkdir -p $out/bin
        mkdir -p $out/share/man/man1
        mkdir -p $out/share/xsession
        cp -f dwm dwmc scripts/* $out/bin
        cp -f dwm.1 $out/share/man/man1/dwm.1
        cp -f dwm.desktop $out/share/xsession/dwm.desktop
        chmod 755 $out/bin/*
    '';

    postInstall = ''
        cp -f dwm.desktop $out/share/xsession/dwm.desktop
        '';
}
