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
      ts_ls = {
        enable = true;
      };
      # rust
      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
        settings = {
          checkOnSave = true;
          check = {
            command = "clippy";
          };
          procMacro = {
            enable = true;
          };
        };
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
