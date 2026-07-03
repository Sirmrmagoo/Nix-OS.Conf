{ config, lib, pkgs, ... }:

{

    users.users."sirmr" = {
        isNormalUser = true;
        description = "sirmr";
        extraGroups = [ "networkmanager" "wheel" ];
        packages = with pkgs; [
            kdePackages.kate
        ];
    };

}