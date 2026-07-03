{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/system-modules.nix
    ];

  #Enable Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.xserver.enable = true;
  services.xserver.videoDrivers = ["amdgpu"];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.printing.enable = true;
 
  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };

  users.users."sirmr" = {
    isNormalUser = true;
    description = "sirmr";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };

  programs.firefox.enable = true;
  programs.steam.enable = true;
  services.flatpak.enable =true;

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

  ];

  environment.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS =
      "\${HOME}/.steam/root/compatibilitytools.d";
  };

  system.stateVersion = "26.05";
}
