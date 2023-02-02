{ config, lib, pkgs, ... }:
{
    time.timeZone = "Asia/Shanghai";

    i18n = {
        defaultLocale = "zh_CN.UTF-8";
        inputMethod = {
            enabled = "fcitx5";
            fcitx5.addons = with pkgs; [
                fcitx5-chinese-addons fcitx5-table-extra fcitx5-table-other
            ];
        };
    };
}
