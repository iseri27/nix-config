{ ... }:
{
    home.file.".config/sxhkd/sxhkdrc-dwm".text = import ./sxhkdrc-dwm.nix;
    home.file.".config/sxhkd/sxhkdrc-gnome".text = import ./sxhkdrc-gnome.nix;
    home.file.".config/autostart/sxhkd.desktop".source = ./sxhkd.desktop;
}
