{
    programs.home-manager.enable = true;
    home.stateVersion = "22.11";
    imports = [
        ./bash
        ./dconf
        ./fish
        ./git
        ./gtk
        ./kde
        ./mpv
        ./neovim
        ./ranger
        ./scripts
        ./starship
        ./templates
        ./user-dirs
        ./vscode
        ./zathura
    ];
}
