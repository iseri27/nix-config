{ ... }:
{
    imports = [
        ./dconf.nix
    ];
    home.file.".nixos-logo.svg".source = ./nixos-logo.svg;
    home.file.".nixos-logo-symbolic.svg".source = ./nixos-logo-symbolic.svg;
}
