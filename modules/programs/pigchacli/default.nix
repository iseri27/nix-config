{ config, pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        (pkgs.callPackage ../../../pkgs/pigchacli/pigchacli.nix { } )
    ];
    systemd.services.pigchacli = {
        enable = true;
        description = "Pigchacli Service";
        unitConfig = {
            After = "NetworkManager.service";
        };
        serviceConfig = {
            ExecStart = "${(pkgs.callPackage ../../../pkgs/pigchacli/pigchacli.nix { })}/bin/pigchacli --start";
        };
        wantedBy = [ "multi-user.target" ];
    };
}
