# nixvim-flake

New neovim configuration flake using the nix-community/nixvim flake

Try with:

```
nix run github:edouardparis/nixvim-flake
```

Install in `configuration.nix`:

```nix
inputs.nixvim.url = "github:edouardparis/nixvim-flake"
```

```nix
environment.systemPackages = with pkgs; [
    inputs.nixvim.packages."x86_64-linux".default
];
```
