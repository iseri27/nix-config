{
  stdenv
, ...
} @args:

stdenv.mkDerivation rec {
    pname = "todo";
    version = "1.0";

    src = ./todo.sh;
    dontUnpack = true;
    dontBuild = true;

    installPhase = ''
        mkdir -p $out/bin
        cp ${src} $out/bin/todo
        chmod 755 $out/bin/todo
        '';
}

