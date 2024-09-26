{
  plugins.telescope = {
    enable = true;

    settings = {
      keymaps = {
        # Find files using Telescope command-line sugar.
        "<leader>ff" = { action = "find_files"; option.silent = true; };
        "<leader>fg" = { action = "live_grep"; option.silent = true; };
        "<leader>b" = { action = "buffers"; option.silent = true; };
        "<leader>fh" = { action = "help_tags"; option.silent = true; };
        "<leader>fd" = { action = "diagnostics"; option.silent = true; };
      };

      defaults = {
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
  };
}
