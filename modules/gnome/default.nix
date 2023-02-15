{ config, lib, pkgs, ... }:
{
    services.packagekit.enable = false;
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;
    services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
    services.gnome.core-developer-tools.enable = false;
    services.gnome.games.enable = false;
    environment.systemPackages = with pkgs; [
        gnome.gnome-tweaks
        gnome.dconf-editor
        dconf2nix
        nur-corona.gnome-extension-input-method-panel
    ] ++ (with gnomeExtensions; [
        appindicator
        bluetooth-quick-connect
        blur-my-shell
        caffeine
        dash-to-dock
        fuzzy-app-search
        just-perfection
        proxy-switcher
        replace-activities-text
        user-themes
    ]);

    # 不安装的软件与插件
    environment.gnome.excludePackages = (with pkgs; [
        baobab
        gnome-photos gnome-tour gnome-text-editor gnome-connections gnome-console gnome-user-docs
    ]) ++ (with pkgs.gnome; [
        atomix
        cheese
        eog epiphany evince
        file-roller
        geary gedit
        gnome-shell-extensions # 这个包是若干个扩展的集合，而不是 gnome 扩展本身
        gnome-calculator gnome-characters gnome-clocks gnome-contacts gnome-disk-utility 
        gnome-font-viewer gnome-maps gnome-music gnome-software gnome-terminal gnome-weather
        hitori
        iagno
        simple-scan
        tali totem
        yelp
    ]);
}
