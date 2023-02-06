{
  stdenv
, fetchFromGitHub
, ...
} @args:

stdenv.mkDerivation rec {
    pname = "cfft";
    version = "6.4";

    src = fetchFromGitHub ({
        owner = "corona09";
        repo = "cfft";
        rev = "71f6017118eff2ae0c450133474266e2fa02b1f6";
        fetchSubmodules = false;
        sha256 = "sha256-WBc0ywkHMlQ8PhtwCEh1C5nYyEkzVkBAn3/mrTNFW4Y=";
    });

    dontBuild = true;

    installPhase = ''
        mkdir -p $out/bin
        cp -f cfft.sh $out/bin/cfft
        chmod 755 $out/bin/cfft
        '';
}
