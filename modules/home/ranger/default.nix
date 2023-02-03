{ config, ... }:
{
    # home.file.".config/ranger".source = ./config;
    home.file.".config/ranger/colorschemes".source = ./config/colorschemes;
    home.file.".config/ranger/plugins".source = ./config/plugins;
    home.file.".config/ranger/commands.py".source = ./config/commands.py;
    home.file.".config/ranger/commands_full.py".source = ./config/commands_full.py;
    home.file.".config/ranger/rc.conf".source = ./config/rc.conf;
    home.file.".config/ranger/rfile.conf".source = ./config/rifle.conf;
    home.file.".config/ranger/scope.sh".source = ./config/scope.sh;
}
