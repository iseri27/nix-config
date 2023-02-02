{
  stdenv
, fetchFromGitHub
, libX11
, libXft
, libXext
, libXinerama
, libXrender
, harfbuzz
, pkg-config
, ...
} @args:

stdenv.mkDerivation rec {
    pname = "st";
    version = "9.0";

    src = fetchFromGitHub ({
        owner = "corona09";
        repo = "st";
        rev = "8e16963aceb537fc274357f505bd575150636db7";
        fetchSubmodules = false;
        sha256 = "sha256-lRrbZExiNyfCNuPmxCU00N6CSLCZr27xbtIz9TH2aLc=";
    });

    nativeBuildInputs = [
        libX11 libXft libXrender harfbuzz
        pkg-config
    ];

    enableParallelBuilding = true;

    installPhase = ''
        mkdir -p $out/bin
        cp -f st $out/bin/st
        chmod 755 $out/bin/st

        mkdir -p $out/share/applications
        cp -f ${./st.desktop} $out/share/applications/st.desktop
        chmod 644 $out/share/applications/st.desktop

        mkdir -p $out/share/icons/hicolor/scalable/apps
        cp -f ${./st.svg} $out/share/icons/hicolor/scalable/apps/st.svg
        chmod 644 $out/share/icons/hicolor/scalable/apps/st.svg
        '';
}
