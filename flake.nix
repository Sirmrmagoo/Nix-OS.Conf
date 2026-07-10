{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    areo-fetch.url = "github:areofyl/fetch";
  };

  outputs = { self, nixpkgs, areo-fetch }:
  let
    system = "x86_64-linux"; # change if your arch differs
  in
  {
    nixosConfigurations."sirmr-nixos" = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./configuration.nix
        ({ pkgs, ... }: {
          environment.systemPackages = [
            areo-fetch.packages.${system}.default
          ];
        })
      ];
    };
  };
}
