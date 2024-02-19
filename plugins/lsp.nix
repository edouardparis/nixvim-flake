{
  plugins.lsp = {
    enable = true;
    servers = {
      fsautocomplete.enable = true;
      nixd.enable = true;

      # web
      html.enable = true;
      cssls.enable = true;
      jsonls.enable = true;
      eslint.enable = true;
      tsserver = {
        enable = true;
        rootDir = "require 'lspconfig.util'.root_pattern('package.json')";
      };
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
