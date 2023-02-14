{ pkgs, ... }:
{
    home.file."Templates".source = "${pkgs.nur-corona.templates}/templates";
}
