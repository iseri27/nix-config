{ config, pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        pkgs.nur-corona.pigchacli
    ];
    networking.proxy.default = "http://127.0.0.1:15777/";
    networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
    systemd.services.pigchacli = {
        enable = true;
        description = "Pigchacli Service";
        unitConfig = {
            After = "NetworkManager.service";
        };
        serviceConfig = {
            ExecStart = "${pkgs.nur-corona.pigchacli}/bin/pigchacli --start";
        };
        wantedBy = [ "multi-user.target" ];
    };
}
