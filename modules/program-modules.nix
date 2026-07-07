{ config, lib, pkgs, ... }:

{
    imports = [
        ./programs/obs-studio.nix
        ./programs/steam.nix
        ./programs/programing.nix
    ];
}