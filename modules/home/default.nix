{
    programs.home-manager.enable = true;
    home.stateVersion = "22.11";
    imports = [
        ./bash
        ./conky
        ./dunst
        ./dconf
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
        ./sxhkd
        ./templates
        ./user-dirs
        ./vscode
        ./xinit
        ./zathura
    ];
}
