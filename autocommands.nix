{
  autoCmd = [
    # Remove trailing whitespace on save
    {
      event = "BufWrite";
      command = "%s/\\s\\+$//e";
    }

    # Set indentation to 2 spaces for nix files
    {
      event = "FileType";
      pattern = "nix";
      command = "setlocal tabstop=2 shiftwidth=2";
    }
    {
      event = "FileType";
      pattern = "javascript";
      command = "setlocal tabstop=2 shiftwidth=2";
    }
    {
      event = "FileType";
      pattern = "typescript";
      command = "setlocal tabstop=2 shiftwidth=2";
    }

    # Enable spellcheck for some filetypes
    {
      event = "FileType";
      pattern = [
        "tex"
        "latex"
        "markdown"
      ];
      command = "setlocal spell spelllang=en,fr";
    }
  ];
}
