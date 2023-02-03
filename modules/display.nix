{ config, lib, ... }:
{
    console = {
        font = "Lat2-Terminus16";
        useXkbConfig = true; # use xkbOptions in tty.
    };
    
    services.xserver.enable = true;
    services.xserver.layout = "us";
    # services.xserver.displayManager.sddm.enable = true;
    services.xserver.displayManager.sddm.theme = "breeze";
    services.xserver.displayManager.startx.enable = true;
    services.xserver.desktopManager.xfce.enable = true;
    services.xserver.xkbOptions = "ctrl:swapcaps";
    services.xserver.libinput.enable = true;
}
