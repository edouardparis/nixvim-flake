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
  ];
}
