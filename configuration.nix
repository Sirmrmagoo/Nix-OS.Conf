{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/system-modules.nix
      ./modules/program-modules.nix
    ];

  #Enable Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  users.users."sirmr" = {
    isNormalUser = true;
    description = "sirmr";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    fastfetch
    mangohud
    protonup-ng
    lutris
    bottles
    distrobox
    spotify
    audacity
    blender
    discord
    btop
    vlc
    inochi-creator
    vscode
    github-desktop
    easyeffects
    kitty
    makemkv
  ];

  programs.firefox.enable = true;

  system.stateVersion = "26.05";
}
