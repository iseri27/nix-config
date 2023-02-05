{
    description = "Corona's NixOS Flake";
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        nur.url = "github:nix-community/NUR";
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, home-manager, nur, ... }@inputs: {
        nixosConfigurations."nixos" = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [
                nur.nixosModules.nur
                ./configuration.nix
                home-manager.nixosModules.home-manager
                {
                    home-manager.useGlobalPkgs = true;
                    home-manager.useUserPackages = true;
                    home-manager.users.corona = import ./modules/home;
                    home-manager.users."3qm4" = import ./modules/home;
                    home-manager.users.root = import ./modules/home;
                }
            ];
        };
    };
}
