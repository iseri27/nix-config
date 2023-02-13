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

    environment.variables = rec {
        QT_QPA_PLATFORMTHEME = "qt5ct";
        GTK_USE_PORTAL = "0";
    };

    environment.etc."xdg/user-dirs.conf".text = ''
        enabled=False
        '';

    nixpkgs.config.allowUnfree = true;
    
    nix.settings.substituters = [ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" ];

    system.stateVersion = "22.11";
}

