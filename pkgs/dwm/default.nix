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
        rev = "380f2c2b0e19a36d2cb6ab04f300d91ee8865cbb";
        fetchSubmodules = false;
        sha256 = "sha256-2yZOnSr9aeHdPWmeReEQyOBZM93Vg3LHgn0re00iQbM=";
    });

    buildInputs = [
        libX11 libXft libXext libXinerama
    ];

    prePatch = ''
        sed -i "s@/usr/local/bin@$out/scripts@" config.mk
        sed -i "s@/usr/local@$out@" config.mk
        patch < ${./fix-makefile.diff}
        '';

    makeFlags = [ "CC=${stdenv.cc.targetPrefix}cc" ];

    preInstall = ''
        mkdir -p $out/scripts
        '';
    postInstall = ''
        cp -f scripts/xbrightness.sh $out/bin/xbrightness.sh
        cp -f scripts/xgetcolortemp.sh $out/bin/xgetcolortemp.sh
        chmod +x $out/bin/*
        '';
}
