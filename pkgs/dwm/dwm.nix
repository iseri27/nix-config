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
        rev = "324ccac10afe145652d376f9bda82e7b25f143e2";
        fetchSubmodules = false;
        sha256 = "sha256-jtfThKyb9mmAUGBaP11EY0iG35/BLvi1lggEu4n7VRM=";
    });

    nativeBuildInputs = [
        libX11 libXft libXext libXinerama
    ];

    enableParallelBuilding = true;

    patchPhase = ''
        patch < ${./nix-patch.patch}
        '';

	# mkdir -p ${DESTDIR}${PREFIX}/bin
	# cp -f dwm dwmc ${DESTDIR}${PREFIX}/bin
	# chmod 755 ${DESTDIR}${PREFIX}/bin/dwm
	# mkdir -p ${DESTDIR}${MANPREFIX}/man1
	# sed "s/VERSION/${VERSION}/g" < dwm.1 > ${DESTDIR}${MANPREFIX}/man1/dwm.1
	# chmod 644 ${DESTDIR}${MANPREFIX}/man1/dwm.1
	# cp -f sync.sh ${DESTDIR}${PREFIX}/bin/dwm-sync.sh
	# chmod 755 ${DESTDIR}${PREFIX}/bin/dwm-sync.sh

    installPhase = ''
        mkdir -p $out/bin
        mkdir -p $out/share/man/man1
        mkdir -p $out/share/xsession
        cp -f dwm dwmc $out/bin
        cp -f sync.sh $out/bin/dwm-sync.sh
        cp -f dwm.1 $out/share/man/man1/dwm.1
        cp -f dwm.desktop $out/share/xsession/dwm.desktop
        chmod 755 $out/bin/dwm
        chmod 755 $out/bin/dwmc
        chmod 755 $out/bin/dwm-sync.sh
    '';

    postInstall = ''
        cp -f dwm.desktop $out/share/xsession/dwm.desktop
        '';
}
