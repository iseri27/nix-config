{ config, lib, pkgs,...}:
{
    # Legacy:
    # boot.loader.grub = {
    #     enable = true;
    #     version = 2;
    #     device = "/dev/sda";
    # };

    # UEFI:
    boot.loader = {
        efi = {
            canTouchEfiVariables = false;
            efiSysMountPoint = "/boot";
        };
        grub = {
            efiSupport = true;
            efiInstallAsRemovable = true;
            device = "nodev";
        };
    };

    networking.hostName = "nixos";
    networking.networkmanager.enable = true;
    
    sound.enable = true;
    hardware.pulseaudio.enable = true;

    # environment.systemPackages = with pkgs; [
    #     broadcom-sta
    #     broadcom-bt-firmware
    # ];
}
