{ config, ... }:
{
    imports = [
        ./boot
        ./fonts
        ./locale
        ./desktop
        ./display
        ./syspkgs
        ./users
        ./gnome
        ./programs
        ./python
    ];
}
