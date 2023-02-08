{
    programs.home-manager.enable = true;
    home.stateVersion = "22.11";
    imports = [
        ./bash
        ./conky
        ./dunst
        ./dwm
        ./fish
        ./git
        ./gtk
        ./kde
        ./mpv
        ./neovim
        ./picom
        ./ranger
        ./scripts
        ./starship
        ./templates
        ./xinit
        ./zathura
    ];
}
