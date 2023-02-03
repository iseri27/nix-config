{
  stdenv
, fetchFromGitHub
, ...
} @args:

stdenv.mkDerivation rec {
    pname = "dwmblocks";
    version = "";

    src = fetchFromGitHub({
        owner = "corona09";
        repo = "dwmblocks";
        rev = "";
        fetchSubmodules = false;
        sha256 = "";
    });

    buildInputs = [];

    prePatch = ''
        sed -i "s@/<path to the folder containing block scripts>@$out/blocks@" config.def.h
        '';

    postInstall = ''
        mkdir -p $out/blocks
        cp -f blocks/* $out/blocks/
        chmod +x $out/blocks/*
        '';
}
