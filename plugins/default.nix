{
  imports = [
    ./cmp.nix
    ./comment.nix
    ./fidget.nix
    ./fmt.nix
    ./lsp.nix
    ./rustaceanvim.nix
    ./telescope.nix
    ./treesitter.nix
    ./trouble.nix
  ];

  plugins.lualine.enable = true;
}
