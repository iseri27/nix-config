{ config, ... }:
{
    home.file.".config/fish/fish_variables".text = import ./fish_variables.nix;
    home.file.".config/fish/config.fish".text = import ./config.nix;
    home.file.".config/fish/functions".source = ./functions;
}
