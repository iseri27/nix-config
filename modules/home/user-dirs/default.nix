{ config, ... }:
{
    home.file.".config/user-dirs.dirs".text = import ./user-dirs.nix;
}
