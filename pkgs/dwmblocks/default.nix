{
  stdenv
, fetchFromGitHub
, libX11
, pkg-config
, ...
} @args:

stdenv.mkDerivation rec {
    pname = "dwmblocks";
    version = "4cee64";

    src = fetchFromGitHub({
        owner = "corona09";
        repo = "dwmblocks";
        rev = "65a488a58db6d2634b11faaa0a230a27cbd46501";
        fetchSubmodules = false;
        sha256 = "sha256-Ry0LcUDxFIsA6hi/gufi+mXrBJ4kfZdTkWlKbBONmq0=";
    });

    nativeBuildInputs = [ pkg-config ];
    buildInputs = [ libX11 ];

    prePatch = ''
        sed -i "s@<path to the folder containing block scripts>@$out/blocks@" config.def.h
        patch < ${./fix-makefile.diff}
        sed -i "s@/usr/local@$out@" GNUmakefile
        '';

    postInstall = ''
        mkdir -p $out/blocks
        cp -f blocks/* $out/blocks/
        chmod +x $out/blocks/*
        '';
}
