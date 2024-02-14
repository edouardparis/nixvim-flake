{
  imports = [
    ./plugins
    ./keymappings.nix
  ];

  config.options = {
    number = true;
    relativenumber = false;
    swapfile = false;
    smartindent = true;
    autoindent = true;
  };

  config.colorschemes.one.enable = true;
}
