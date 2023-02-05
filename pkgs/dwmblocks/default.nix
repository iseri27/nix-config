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
        rev = "ab1b51e7f1d495da87943e67d325bfe837c0e745";
        fetchSubmodules = false;
        sha256 = "sha256-iA6HxjiDUY0N3aHg1l+8zI//hSjJnT5e5hkFXvsGnqQ=";
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
