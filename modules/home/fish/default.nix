{ config, ... }:
{
    home.file.".config/fish/fish_variables".text = import ./fish_variables.nix;
    home.file.".config/fish/config.fish".text = import ./config.nix;
    home.file.".config/fish/functions".source = ./functions;
    # home.file.".config/fish/functions/cls.fish".text = import ./functions/cls.nix;
    # home.file.".config/fish/functions/csl.fish".text = import ./functions/csl.nix;
    # home.file.".config/fish/functions/lcs.fish".text = import ./functions/lcs.nix;
    # home.file.".config/fish/functions/lsc.fish".text = import ./functions/lsc.nix;
    # home.file.".config/fish/functions/scl.fish".text = import ./functions/scl.nix;
    # home.file.".config/fish/functions/slc.fish".text = import ./functions/slc.nix;
    # home.file.".config/fish/functions/dc.fish".text = import ./functions/dc.nix;
    # home.file.".config/fish/functions/cat.fish".text = import ./functions/cat.nix;
    # home.file.".config/fish/functions/ls.fish".text = import ./functions/ls.nix;
    # home.file.".config/fish/functions/ll.fish".text = import ./functions/ll.nix;
    # home.file.".config/fish/functions/la.fish".text = import ./functions/la.nix;
    # home.file.".config/fish/functions/lg.fish".text = import ./functions/lg.nix;
    # home.file.".config/fish/functions/q.fish".text = import ./functions/q.nix;
    # home.file.".config/fish/functions/qq.fish".text = import ./functions/qq.nix;
    # home.file.".config/fish/functions/r.fish".text = import ./functions/r.nix;
    # home.file.".config/fish/functions/ranger.fish".text = import ./functions/ranger.nix;
    # home.file.".config/fish/functions/rm.fish".text = import ./functions/rm.nix;
    # home.file.".config/fish/functions/psg.fish".text = import ./functions/psg.nix;
    # home.file.".config/fish/functions/neo.fish".text = import ./functions/neo.nix;
    # home.file.".config/fish/functions/fish_prompt.fish".source = ./functions/fish_prompt.fish;
}
