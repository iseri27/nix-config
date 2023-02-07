{ config, pkgs, nur, ... }:

{
    # 启用 flatpak
    xdg.portal.extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
    ];
    xdg.portal.enable = true;
    services.flatpak.enable = true;
    # 蓝牙
    services.blueman.enable = true;
    # 密钥存储
    services.gnome.gnome-keyring.enable = true;
    programs.seahorse.enable = true;
    # qt 主题
    qt.platformTheme = "qt5ct";

    environment.systemPackages = with pkgs; [
        # 自定义软件包
        (pkgs.callPackage ../pkgs/cfft      { })
        (pkgs.callPackage ../pkgs/dmenu     { })
        (pkgs.callPackage ../pkgs/dwm       { })
        (pkgs.callPackage ../pkgs/dwmblocks { })
        (pkgs.callPackage ../pkgs/qq        { })
        (pkgs.callPackage ../pkgs/st        { })
        (pkgs.callPackage ../pkgs/todo      { })
        config.nur.repos.linyinfeng.wemeet
        config.nur.repos.xddxdd.baidupcs-go

        # Basic Packages:
        acpi
        bat bc brightnessctl
        clang clang-tools conky croc
        dunst
        exa
        feh ffmpeg ffmpegthumbnailer file fzf
        gcc git gnumake
        imagemagick
        killall
        lazygit libime libnotify lxappearance
        mpd mpv
        ncdu neofetch neovim neovim-remote nodejs
        openssh
        p7zip parted picom pkg-config
        qt5ct
        ranger rar rnix-lsp starship
        surf
        texlive.combined.scheme-full trash-cli tree
        ueberzug unrar unzip
        wget
        xclip xorg.xinit
        yarn
        zathura zip
    ];
}
