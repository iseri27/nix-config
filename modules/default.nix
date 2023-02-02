{ config, ... }:
{
    imports = [
        ./fonts.nix
        ./locale.nix
        ./display.nix
        ./hardware.nix
        ./syspkgs.nix
        ./users.nix
        ./programs
    ];
}
