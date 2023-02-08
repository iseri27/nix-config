{ pkgs, ... }:
{
    home.file."Templates".source = "${(pkgs.callPackage ../../../pkgs/templates { })}/templates";
}
