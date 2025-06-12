{
  imports = [
    ./autocommands.nix
    ./plugins
    ./keymappings.nix
  ];


  config.clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };

  config.opts = {
    updatetime = 100;

    smartcase = true;

    number = true;
    relativenumber = false;

    mouse = "a";
    mousemodel = "extend";
    splitbelow = true;
    splitright = true;

    tabstop = 4; # Number of spaces a <Tab> in the text stands for (local to buffer)
    shiftwidth = 4; # Number of spaces used for each step of (auto)indent (local to buffer)
    expandtab = true; # Expand <Tab> to spaces in Insert mode (local to buffer)
    smartindent = true;
    autoindent = true;

    swapfile = false;
  };

  config.colorschemes.catppuccin = {
    enable = true;
    settings.transparent_background = true;
  };
}
