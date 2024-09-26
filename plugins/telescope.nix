{
  plugins.telescope = {
    enable = true;
    keymaps = {
      # Find files using Telescope command-line sugar.
      "<leader>ff" = { action = "find_files"; };
      "<leader>fg" = { action = "live_grep"; };
      "<leader>b" = { action = "buffers";  };
      "<leader>fh" = { action = "help_tags"; };
      "<leader>fd" = { action = "diagnostics"; };
    };

    settings.defaults = {
      file_ignore_patterns = [
        "^.git/"
        "^.mypy_cache/"
        "^__pycache__/"
        "^output/"
        "^data/"
        "%.ipynb"
      ];
      # set_env.COLORTERM = "truecolor";
    };
  };
}
