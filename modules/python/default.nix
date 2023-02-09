{ pkgs, ... }:
let
    pythonPackages = p: with p; [
        numpy
        pynvim
    ];
in
{
    environment.systemPackages = [
        pkgs.virtualenv
        (pkgs.python3.withPackages pythonPackages)
    ];
}
