{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        qemu_full
    ];
    environment.etc."qemu/bridge.conf".text = ''
        allow qbr0
        '';
}
