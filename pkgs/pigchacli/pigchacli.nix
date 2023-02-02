{ stdenv
, fetchurl
, lib
, callPackage
, ...
} @ args:

stdenv.mkDerivation rec {
    pname = "pigchacli";
    version = "1.1.1";
    src = fetchurl {
        url = "https://webdownload.duangspeed.com/linux/pigchacli_x86_64";
        sha256 = "sha256-SNKUplbMLnjCpRoERGQgs+oA7bce9kiNEoY5k1SBlUU=";
    };
    dontUnpack = true;
    dnotBuild = true;
    installPhase = ''
        mkdir -p $out/bin
        cp ${src} $out/bin/pigchacli
        chmod +x $out/bin/pigchacli
    '';
}
