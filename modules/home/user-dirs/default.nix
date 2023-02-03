{ config, ... }:
{
    home.file.".config/user-dirs.dirs".source = ./user-dirs.dirs;
}
