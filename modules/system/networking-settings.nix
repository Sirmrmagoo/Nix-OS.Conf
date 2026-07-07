{ config, lib, pkgs, ... }:

{
    
    networking.hostName = "sirmr-nixos";
    networking.networkmanager.enable = true;

}