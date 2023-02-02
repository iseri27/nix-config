{ config, lib, pkgs, ... }:
{
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
        };
    };
}
