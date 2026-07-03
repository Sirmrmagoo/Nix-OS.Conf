{ config, lib, pkgs, ... }:

{
    
  services.flatpak.enable =true;
  
  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };

}