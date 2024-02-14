{
  imports = [
    ./cmp.nix
    ./lsp.nix
    ./telescope.nix
    ./treesitter.nix
  ];

  plugins.lightline.enable = true;
}
