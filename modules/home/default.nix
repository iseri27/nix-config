{
    programs.home-manager.enable = true;
    home.stateVersion = "22.11";
    imports = [
        ./dwm
        ./kde
        ./xinit
        ./picom
        ./conky
        ./dunst
        ./git
        ./bash
        ./fish
        ./starship
        ./neovim
        ./mpv
        ./ranger
        ./zathura
    ];
}
