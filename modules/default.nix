{ config, ... }:
{
    imports = [
        ./boot
        ./display
        ./gnome
        ./locale
        ./programs
        ./syspkgs
        ./users
    ];
}
