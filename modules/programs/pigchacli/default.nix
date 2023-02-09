{ config, pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        pkgs.nur-corona.pigchacli
    ];
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
