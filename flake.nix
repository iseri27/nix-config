{
    description = "Corona's NixOS Flake";
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        nur.url = "github:nix-community/NUR";
        coronaNur = {
            url = "github:corona09/nur-pkgs";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, home-manager, nur, coronaNur, ... }@inputs: {
        nixosConfigurations."nixos" = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [
                nur.nixosModules.nur
                ({
                    nixpkgs.overlays = [
                        (final: prev: {
                            coronaNur = inputs.coronaNur.packages."${prev.system}";
                        })
                    ];
                })
                ./configuration.nix
            ];
        };
    };
}
