{ ... }:
{
    imports = [
        ./dconf.nix
    ];
    home.file.".nixos-logo.svg".source = ./nixos-logo.svg;
}
