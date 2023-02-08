{
  stdenv
, fetchFromGitHub
, ...
} @args:

stdenv.mkDerivation rec {
    pname = "gbkunzip";
    version = "fb0097";

    src = fetchFromGitHub ({
        owner = "corona09";
        repo = "GBKunzip-by-lilydjwg";
        rev = "fb0097d31b367279d22470b110cef316782c67d9";
        fetchSubmodules = false;
        sha256 = "sha256-vPWXxo0k9nwuZZITTvzwz3Onx+ccXEeiqlLxj5NKdzY=";
    });

    dontConfigure = true;
    dontBuild = true;

    installPhase = ''
        install -D -m644 gbzip.py $out/bin/gbzip.py
        install -D -m755 gbkunzip $out/bin/gbkunzip
        '';
}

