{
    programs.home-manager.enable = true;
    home.stateVersion = "22.11";
    imports = [
        ./dwm
        ./picom
        ./dunst
        ./user-dirs
        ./git
        ./bash
        ./fish
        ./starship
        ./ranger
        ./neovim
        ./mpv
    ];
}
