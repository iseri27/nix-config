{
    programs.home-manager.enable = true;
    home.stateVersion = "22.11";
    imports = [
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
