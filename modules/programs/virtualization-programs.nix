{ config, lib, pkgs, ... }:

{
    
    environment.systemPackages = with pkgs; [
    lutris
    bottles
    distrobox
    boxbuddy
    ];

}