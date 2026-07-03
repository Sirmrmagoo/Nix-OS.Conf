{ config, lib, pkgs, ... }:

{
    imports = [
        ./system/audio-settings.nix
        ./system/bootloader-settings.nix
        ./system/display-settings.nix
        ./system/garbage-settings.nix
        ./system/networking-settings.nix
        ./system/time-settings.nix
    ];
}