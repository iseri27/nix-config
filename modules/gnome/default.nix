{ config, lib, pkgs, ... }:
{
    # GNOME
    services.packagekit.enable = false;
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;
    services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
    environment.systemPackages = with pkgs; [
        gnome.gnome-tweaks
        gnome.dconf-editor
        dconf2nix
    ] ++ (with gnomeExtensions; [
        appindicator
        bluetooth-quick-connect
        blur-my-shell
        caffeine
        command-menu
        dash-to-dock
        fuzzy-app-search
        just-perfection
        proxy-switcher
        replace-activities-text
        todotxt
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
        gnome-calculator gnome-characters gnome-clocks gnome-contacts gnome-disk-utility 
        gnome-font-viewer gnome-maps gnome-music gnome-software gnome-terminal gnome-weather
        hitori
        iagno
        nautilus
        simple-scan
        tali totem
        yelp
    ]);
}
