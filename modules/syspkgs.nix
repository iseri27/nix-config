{ config, pkgs, nur, ... }:

{
    xdg.portal.extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
    ];
    xdg.portal.enable = true;
    services.flatpak.enable = true;
    services.gnome.gnome-keyring.enable = true;
    programs.seahorse.enable = true;
    qt.platformTheme = "qt5ct";
    environment.systemPackages = with pkgs; [
        (pkgs.callPackage ../pkgs/st { })
        (pkgs.callPackage ../pkgs/dwm { })
        (pkgs.callPackage ../pkgs/dmenu { })
        (pkgs.callPackage ../pkgs/dwmblocks { })
        config.nur.repos.linyinfeng.wemeet

        acpi
        brightnessctl
        bc
        picom
        feh
        dunst
        libnotify

        # libreoffice-qt
        texlive.combined.scheme-full

        lxappearance
        libsForQt5.kate
        libsForQt5.dolphin
        libsForQt5.ktorrent
        libsForQt5.breeze-qt5
        libsForQt5.breeze-gtk
        libsForQt5.breeze-icons
        libsForQt5.plasma-settings
        qt5ct

        bat
        conky
        exa
        git
        gnumake
        mpd
        mpv
        fzf
        wget
        ncdu
        neofetch
        croc
        zip
        unzip
        p7zip
        unrar
        rar
        killall
        neovim
        neovim-remote
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
        google-chrome
        zotero
        nextcloud-client
        zathura

        rnix-lsp

        nodejs
        yarn

        qemu_full

        xclip
        xorg.xinit
    ];

}
