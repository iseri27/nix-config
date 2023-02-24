{ config, lib, pkgs, ... }:
{
    services.packagekit.enable = false;
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;
    services.gvfs.enable = true;
    services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
    services.gnome.core-developer-tools.enable = false;
    services.gnome.games.enable = false;
    environment.systemPackages = with pkgs; [
        gnome.gnome-tweaks
        gnome.dconf-editor
        gnome.gnome-system-monitor
        dconf2nix
        nur-corona.gnomeExtensions.input-method-panel
        nur-corona.gnomeExtensions.colored-application-menu-icon
    ] ++ (with gnomeExtensions; [
        appindicator
        blur-my-shell
        caffeine
        command-menu
        dash-to-dock
        extension-list
        fuzzy-app-search
        just-perfection
        proxy-switcher
        removable-drive-menu
        replace-activities-text
        user-themes
    ]);

    # 不安装的软件与插件
    environment.gnome.excludePackages = (with pkgs; [
        gnome-photos gnome-tour gnome-text-editor gnome-connections gnome-console gnome-user-docs
    ]) ++ (with pkgs.gnome; [
        atomix
        cheese
        eog epiphany evince
        file-roller
        geary gedit

        # gnome-shell-extensions 这个包是若干个扩展的集合，而不是 gnome 扩展本身
        gnome-calculator gnome-characters gnome-clocks gnome-contacts gnome-disk-utility 
        gnome-font-viewer gnome-maps gnome-music gnome-shell-extensions gnome-software
        gnome-terminal gnome-weather

        hitori
        iagno
        nautilus
        simple-scan
        tali totem
        yelp
    ]);
}
