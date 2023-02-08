{ stdenv, fetchgit, ... }:
stdenv.mkDerivation rec {
    pname = "templates";
    version = "20230208";

    src = fetchgit({
        url = "https://gitee.com/corona09/templates";
        rev = "780888736818c2b5d717a7bd6da5e3b39c66aab5";
        sha256 = "sha256-UsvKNu2lk7M5xzaTjw6JZZopU/MWSvwxSHMDEXl8GMs=";
    });

    dontConfigure = true;
    dontBuild = true;

    installPhase = ''
        mkdir -p $out/templates
        cp -rf $src/* $out/templates/
        '';
}
