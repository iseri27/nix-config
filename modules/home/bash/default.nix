{ config, ... }:
{
    home.file.".bashrc".text = import ./bashrc.nix;
}
