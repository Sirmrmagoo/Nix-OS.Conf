{ config, lib, pkgs, ... }:

{

    environment.systemPackages = with pkgs; [
        jetbrains.pycharm
        jetbrains.rider
        devenv
    ];

}