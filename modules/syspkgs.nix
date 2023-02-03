{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        (pkgs.callPackage ../pkgs/dwm { })
        (pkgs.callPackage ../pkgs/st { })
        # dwm
        bat
        exa
        git
        gnumake
        mpd
        mpv
        wget
        croc
        zip
        unzip
        p7zip
        unrar
        rar
        neovim
        parted
        ranger
        openssh
        pkg-config
        imagemagick
        ueberzug
        lazygit
        starship
        trash-cli
        keepassxc
        firefox
        zotero
        tdesktop
        nextcloud-client

        rnix-lsp

        nodejs yarn

        qemu_full

        xorg.xinit
        xorg.xbacklight

        # Python Packages:
        python310
        python310Packages.pip
        python310Packages.pynvim
        python310Packages.numpy
    ];
}
