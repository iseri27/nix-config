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
        (pkgs.callPackage ../pkgs/gbkunzip  { })
        config.nur.repos.linyinfeng.wemeet
        config.nur.repos.xddxdd.baidupcs-go

        # Basic Packages:
        acpi atool
        bat bc brightnessctl
        catdoc clang clang-tools conky croc ctags
        dunst
        exa
        feh ffmpeg ffmpegthumbnailer file fzf
        gcc git gnumake gnome-epub-thumbnailer
        imagemagick
        jq
        killall
        lazygit libarchive libime libnotify librsvg
        mediainfo mpd mpv
        ncdu neofetch neovim neovim-remote nodejs
        odt2txt openssh
        pandoc p7zip parted picom pkg-config poppler_utils
        qt5ct
        ranger rar rnix-lsp starship
        surf
        texlive.combined.scheme-full trash-cli tree
        ueberzug unrar unzip
        w3m wget
        xclip xlsx2csv xorg.xinit
        yarn
        zathura zip
    ];
}
