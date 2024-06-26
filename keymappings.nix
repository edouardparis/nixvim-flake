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
      action = "<CMD>TroubleToggle<CR>";
    }
    {
      mode = "n";
      key = "<leader>tc";
      action = "<CMD>TroubleClose<CR>";
    }
  ];
}
