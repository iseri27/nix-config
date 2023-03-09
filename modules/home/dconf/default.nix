{ ... }:
{
    imports = [
        ./dconf.nix
    ];
    home.file.".nixos-logo-symbolic.svg".source = ./nixos-logo-symbolic.svg;
    home.file.".avatar".source = ./ohto-ai.jpg;
}
