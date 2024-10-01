{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  keymaps = [
    {
      mode = "i";
      key = "jj";
      action = "<esc>";
    }
    {
      mode = "n";
      key = "<Tab>";
      action = ":tabnext<CR>";
    }
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options = {
        silent = true;
        desc = "Workspace Diagnostics (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>tc";
      action = "<cmd>Trouble close<cr>";
    }
  ];
}
