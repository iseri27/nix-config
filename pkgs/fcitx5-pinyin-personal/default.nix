{ stdenv, python3, libime, ...}:

stdenv.mkDerivation rec {
    pname = "fcitx5-pinyin-personal";
    version = "20230207";

    src = ./src;

    dontUnpack = true;
    dontConfigure = true;
    dontBuild = true;

    nativeBuildInputs = [ python3 libime ];

    installPhase = ''
        mkdir -p $out/tmp
        python $src/make_dict_file.py $src/personal-emoji.text   > $out/tmp/personal-emoji.txt
        python $src/make_dict_file.py $src/personal-phrases.text > $out/tmp/personal-phrases.txt
        libime_pinyindict $out/tmp/personal-emoji.txt   personal-emoji.dict
        libime_pinyindict $out/tmp/personal-phrases.txt personal-phrases.dict
        install -D -m644 personal-emoji.dict   $out/share/fcitx5/pinyin/dictionaries/personal-emoji.dict
        install -D -m644 personal-phrases.dict $out/share/fcitx5/pinyin/dictionaries/personal-phrases.dict
        rm -rf $out/tmp
        '';
}
