{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        cantata
        google-chrome
        keepassxc
        nextcloud-client
        tdesktop
        vlc
        whitesur-gtk-theme whitesur-icon-theme
        zotero

        libsForQt5.ark
        libsForQt5.kate
        libsForQt5.ktorrent
        libsForQt5.okular
        libsForQt5.gwenview
        libsForQt5.dolphin
        libsForQt5.dolphin-plugins
        libsForQt5.breeze-qt5
        libsForQt5.breeze-gtk
        libsForQt5.breeze-icons

        xfce.thunar
    ];
}
