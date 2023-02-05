{ config, pkgs, nur, ... }:

{
    xdg.portal.extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
    ];
    xdg.portal.enable = true;
    services.flatpak.enable = true;
    environment.systemPackages = with pkgs; [
        (pkgs.callPackage ../pkgs/st { })
        (pkgs.callPackage ../pkgs/dwm { })
        (pkgs.callPackage ../pkgs/dmenu { })
        (pkgs.callPackage ../pkgs/dwmblocks { })
        config.nur.repos.linyinfeng.wemeet
        acpi
        bc
        picom
        feh
        dunst
        libnotify

        bat
        exa
        git
        gnumake
        mpd
        mpv
        wget
        neofetch
        croc
        zip
        unzip
        p7zip
        unrar
        rar
        killall
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
