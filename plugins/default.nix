{
  imports = [
    ./cmp.nix
    ./lsp.nix
    ./rustaceanvim.nix
    ./telescope.nix
    ./treesitter.nix
  ];

  plugins.lightline.enable = true;
}
