{
  description = "Personal Neovim configuration";
  inputs.nixvim.url = "github:nix-community/nixvim";

  outputs = {
    self,
    nixvim,
    flake-parts,
  } @ inputs: let
    config = import ./config.nix;
  in
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ];

      perSystem = {
        system,
        ...
      }: let
        pkgs = import nixvim.inputs.nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        nixvim' = nixvim.legacyPackages."${system}";
        nvim = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = config;
        };
      in {
        packages = {
          inherit nvim;
          default = nvim;
        };
      };
    };
}
