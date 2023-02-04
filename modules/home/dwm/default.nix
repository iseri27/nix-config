{ config, ... }:
{
    home.file.".dwm/autostart.sh".source                    = ./autostart/autostart.sh;
    home.file.".dwm/adjust-temp".text                       = import ./autostart/adjust-temp.nix;

    home.file.".cache/dmenu-applications-default".text      = import ./files/dmenu-applications-default.nix;
}
