{
  plugins.lsp = {
    enable = true;
    servers = {
      fsautocomplete.enable = true;
      nixd.enable = true;
    };
    keymaps.lspBuf = {
      "gd" = "definition";
      "gD" = "references";
      "gt" = "type_definition";
      "gi" = "implementation";
      "K" = "hover";
    };
  };
}
