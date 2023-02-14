{ config, ... }:
{
    imports = [
        ./boot
        ./fonts
        ./locale
        ./display
        ./syspkgs
        ./users
        ./gnome
        ./programs
        ./python
    ];
}
