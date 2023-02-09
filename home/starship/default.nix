{ config, ... }:
{
    home.file.".config/starship.toml".text = import ./starship.nix;
}
