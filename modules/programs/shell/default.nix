{ config, pkgs, ... }:
{
    programs.fish.enable = true;
    programs.command-not-found.enable = false;
    programs.nix-index.enable = true;
    programs.nix-index.enableFishIntegration = true;
    users.defaultUserShell = pkgs.fish;
}
