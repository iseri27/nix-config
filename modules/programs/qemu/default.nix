{ ... }:
{
    environment.etc."qemu/bridge.conf".text = ''
        allow qbr0
        '';
}
