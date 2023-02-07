{ stdenv, lib, fetchurl,...}:

stdenv.mkDerivation rec {
    pname = "fcitx5-pinyin-zhwiki";
    version = "20230128";

    src = fetchurl({
        url = "https://github.com/felixonmars/fcitx5-pinyin-zhwiki/releases/download/0.2.4/zhwiki-20230128.dict";
        sha256 = "sha256-SFSNwsyE9W9pCIKlu+8pGVVNdNn6MITA4x7meicbUyQ=";
    });

    dontUnpack = true;
    dontConfigure = true;
    dontBuild = true;

    installPhase = ''
        install -D -m644 $src $out/share/fcitx5/pinyin/dictionaries/zhwiki.dict
        '';
}
