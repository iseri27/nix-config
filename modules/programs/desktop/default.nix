{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        whitesur-gtk-theme
        whitesur-icon-theme
        vlc
        cantata

        tdesktop
        keepassxc
        google-chrome
        zotero
        nextcloud-client

        libsForQt5.kate
        libsForQt5.okular
        libsForQt5.gwenview
        libsForQt5.dolphin
        libsForQt5.ktorrent
        libsForQt5.breeze-qt5
        libsForQt5.breeze-gtk
        libsForQt5.breeze-icons
    ];
}
