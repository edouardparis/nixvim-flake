{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        "*" = [ "codespell" ];
        "_" = [ "trim_whitespace" ];
        go = [ "goimports" "golines" "gofmt" "gofumpt" ];
        javascript = [[ "prettierd" "prettier" ]];
        json = [ "jq" ];
        lua = [ "stylua" ];
        nix = [ "nixfmt" ];
        python = [ "isort" "black" ];
        rust = [ "cargo fmt" ];
        sh = [ "shfmt" ];
      };
      format_on_save = {
        lsp_format = "first";
      };
    };
  };
}
