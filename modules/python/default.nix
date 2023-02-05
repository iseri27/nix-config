{ pkgs, ... }:
let
    pythonPackages = p: with p; [
        numpy
        pynvim
    ];
in
{
    environment.systemPackages = [
        pkgs.python3
        (pkgs.python3.withPackages pythonPackages)
    ];
}
