{ config, pkgs, ... }:

{
    imports =
        [
          ./hardware-configuration.nix
          ./modules
        ];
    
    nix = {
        package = pkgs.nixUnstable;
        extraOptions = ''
            experimental-features = nix-command flakes
        '';
    };
    nixpkgs.config.allowUnfree = true;
    
    # programs.fish.enable = true;
    # users.defaultUserShell = pkgs.fish;
    
    nix.settings.substituters = [ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" ];

    system.stateVersion = "22.11";
}

