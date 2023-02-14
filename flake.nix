{
    description = "Corona's NixOS Flake";
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        nur.url = "github:nix-community/NUR";
        nur-corona = {
            url = "github:corona09/nur-pkgs";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, home-manager, nur, nur-corona, ... }@inputs: {
        nixosConfigurations."nixos" = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [
                ({
                    nixpkgs.overlays = [
                        (final: prev: {
                            nur-corona = inputs.nur-corona.packages."${prev.system}";
                        })
                    ];
                })
                nur.nixosModules.nur
                home-manager.nixosModules.home-manager
                {
                    home-manager.useGlobalPkgs = true;
                    home-manager.useUserPackages = true;
                    home-manager.users.corona = import ./modules/home;
                    home-manager.users.root = import ./modules/home;
                }
                ./environment.nix
            ];
        };
    };
}
