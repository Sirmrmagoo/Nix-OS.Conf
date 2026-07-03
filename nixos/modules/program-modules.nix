{ config, lib, pkgs, ... }:

{
    imports = [
        ./programs/obs-studio.nix
        ./programs/steam.nix
    ];
}