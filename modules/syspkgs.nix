{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        # (pkgs.callPackage ../pkgs/dwm/dwm.nix { } )
        (pkgs.callPackage ../pkgs/st { })
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
