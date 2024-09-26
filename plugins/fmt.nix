{
  plugins.conform-nvim = {
    enable = true;
    formattersByFt = {
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

    # settings.format_on_save = true;
  };
}
