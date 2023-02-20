{ config, lib, pkgs, ... }:
{
    time.timeZone = "Asia/Shanghai";

    i18n = {
        defaultLocale = "zh_CN.UTF-8";
        inputMethod = {
            enabled = "fcitx5";
            fcitx5.addons = with pkgs; [
                fcitx5-chinese-addons fcitx5-table-extra fcitx5-table-other
                nur-corona.fcitx5-pinyin-zhwiki
                nur-corona.fcitx5-pinyin-moegirl
                nur-corona.fcitx5-pinyin-personal
            ];
        };
    };

    fonts = {
        fontDir.enable = true;
        fonts = with pkgs; [
            noto-fonts
            noto-fonts-cjk-sans
            noto-fonts-cjk-serif
            source-code-pro
            (nerdfonts.override { fonts = [ "FiraCode" "JetBrainsMono" "Mononoki" "UbuntuMono" ]; })
        ];
        fontconfig = {
            defaultFonts = {
                emoji     = [ "Noto Color Emoji"      ];
                monospace = [ "Noto Sans Mono CJK SC" ];
                sansSerif = [ "Noto Sans CJK SC"      ];
                serif     = [ "Noto Serif CJK SC"     ];
            };
            localConf = ''
                <?xml version='1.0'?>
                <!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
                <fontconfig>
                    <alias>
                        <family>sans-serif</family>
                        <prefer>
                            <family>Noto Sans CJK SC</family>
                            <family>Noto Sans</family>
                            <family>Noto Color Emoji</family>
                            <family>中华书局宋体00平面</family>
                            <family>中华书局宋体02平面</family>
                            <family>中华书局宋体15平面</family>
                        </prefer>
                    </alias>
                    <alias>
                        <family>serif</family>
                        <prefer>
                            <family>Noto Serif CJK SC</family>
                            <family>Noto Color Emoji</family>
                            <family>中华书局宋体00平面</family>
                            <family>中华书局宋体02平面</family>
                            <family>中华书局宋体15平面</family>
                        </prefer>
                    </alias>
                    <alias>
                        <family>monospace</family>
                        <prefer>
                            <family>mononoki Nerd Font</family>
                            <family>FiraCode Nerd Font</family>
                            <family>JetBrainsMono Nerd Font</family>
                            <family>Noto Sans Mono CJK SC</family>
                            <family>Noto Color Emoji</family>
                            <family>中华书局宋体00平面</family>
                            <family>中华书局宋体02平面</family>
                            <family>中华书局宋体15平面</family>
                        </prefer>
                    </alias>
                    <dir>~/.local/share/fonts</dir>
                </fontconfig>
                '';
        };
    };
}
