{ config, lib, pkgs, ... }:
{
    console = {
        font = "Lat2-Terminus16";
        useXkbConfig = true; # use xkbOptions in tty.
    };
    
    services.xserver.enable = true;
    services.xserver.layout = "us";
    services.xserver.xkbOptions = "ctrl:swapcaps";
    services.xserver.libinput.enable = true;
}
