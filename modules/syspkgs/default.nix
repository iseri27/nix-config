{ config, pkgs, nur, ... }:

{
    # 启用 flatpak
    # xdg.portal.extraPortals = with pkgs; [
    #     xdg-desktop-portal-gtk
    # ];
    xdg.portal.enable = true;
    services.flatpak.enable = true;
    # 蓝牙 blueman
    # services.blueman.enable = true;
    # 密钥存储
    services.gnome.gnome-keyring.enable = true;
    programs.seahorse.enable = true;
    # qt 主题
    qt.platformTheme = "qt5ct";

    # 网络设置
    networking.hostName = "nixos";
    networking.networkmanager.enable = true;
    
    # 声音与蓝牙设置
    sound.enable = true;
    hardware.pulseaudio.enable = true;
    hardware.bluetooth.enable = true;

    environment.systemPackages = with pkgs; [
        # 自定义软件包
        config.nur.repos.linyinfeng.wemeet
        config.nur.repos.xddxdd.baidupcs-go

        nur-corona.cfft
        nur-corona.gbkunzip
        nur-corona.qq
        nur-corona.st
        nur-corona.adoc-utils
        nur-corona.lyx-fonts

        # Basic Packages:
        acpi aria asciidoc-full-with-plugins asciidoctor-with-extensions atool
        bat bc brightnessctl
        catdoc clang clang-tools croc ctags
        dos2unix
        exa
        ffmpeg ffmpegthumbnailer file fontforge fribidi fzf
        gcc git glow gnumake gnome-epub-thumbnailer
        imagemagick
        jq
        killall
        lazygit libarchive libime libnotify librsvg
        mediainfo mpd mpv
        ncdu neofetch neovim neovim-remote networkmanagerapplet nodejs nodePackages.bash-language-server
        odt2txt openssh
        p7zip pandoc papirus-icon-theme parted pkg-config php poppler_utils
        qt5ct qutebrowser
        ranger rar rnix-lsp starship
        texlive.combined.scheme-full translate-shell trash-cli tree
        ueberzug unrar unzip
        vscode-fhs
        w3m wget whitesur-gtk-theme
        xclip xlsx2csv
        yarn
        zathura zip

        # 桌面软件
        cantata
        google-chrome
        keepassxc
        nextcloud-client
        tdesktop transmission-gtk
        vlc
        zotero
    ] ++ (with pkgs.libsForQt5; [
        ark
        breeze-gtk breeze-icons breeze-qt5
        dolphin
        kate kio-extras
        gwenview
        okular
    ]);

}
