{
  imports = [
    ./cmp.nix
    ./codecompanion.nix
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
  plugins.lz-n.enable = true;
  plugins.render-markdown = {
    enable = true;
    settings.file_types = [
      "markdown"
      "codecompanion"
    ];
  };
  plugins.mini = {
    enable = true;
    modules.diff = {
      view = {};
    };
  };
}
