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
        config.nur.repos.linyinfeng.wemeet
        config.nur.repos.xddxdd.baidupcs-go

        nur-corona.cfft
        nur-corona.dwm
        nur-corona.dmenu
        nur-corona.dwmblocks
        nur-corona.qq
        nur-corona.st
        nur-corona.todo
        nur-corona.gbkunzip

        # Basic Packages:
        acpi aria atool
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
        ncdu neofetch neovim neovim-remote nodejs nodePackages.bash-language-server
        odt2txt openssh
        pandoc p7zip parted picom pkg-config poppler_utils
        qt5ct
        ranger rar rnix-lsp starship
        surf sxhkd
        texlive.combined.scheme-full trash-cli tree
        ueberzug unrar unzip
        vscode-fhs
        w3m wget
        xclip xlsx2csv xorg.xinit
        yarn
        zathura zip
    ];
}
