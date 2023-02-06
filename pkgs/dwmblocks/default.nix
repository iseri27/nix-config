{
  stdenv
, fetchFromGitHub
, libX11
, pkg-config
, pkgs
, ...
} @args:

stdenv.mkDerivation rec {
    pname = "dwmblocks";
    version = "4cee64";

    src = fetchFromGitHub({
        owner = "corona09";
        repo = "dwmblocks";
        rev = "65c86d816aff18b2b8d2371b68ef5157a9ecf6d5";
        fetchSubmodules = false;
        sha256 = "sha256-WwOMumSoj16HVVysvUeZx95jR7L+siRqLTxyKmtRZ9o=";
    });

    nativeBuildInputs = [ pkg-config ];
    buildInputs = [ libX11 ];

    prePatch = ''
        sed -i "s@<path to the folder containing block scripts>@$out/blocks@" config.def.h
        patch < ${./fix-makefile.diff}
        sed -i "s@/usr/local@$out@" GNUmakefile
        sed -i "s@dwm-@${pkgs.callPackage ../dwm { }}/scripts/dwm-@" blocks/*
        '';

    postInstall = ''
        mkdir -p $out/blocks
        cp -f blocks/* $out/blocks/
        chmod +x $out/blocks/*
        '';
}
