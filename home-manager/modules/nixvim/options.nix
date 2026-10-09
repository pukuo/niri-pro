{ ... }:

{
  opts = {
    clipboard = "unnamedplus";
    mouse = "a";
    splitbelow = true;
    splitright = true;
    timeoutlen = 500;
    termguicolors = true;
    completeopt = "menuone,noselect";
    updatetime = 300;

    tabstop = 2;
    shiftwidth = 2;
    softtabstop = 2;
    expandtab = true;
    shiftround = true;
    smartindent = true;

    number = true;
    relativenumber = true;
    wrap = false;
    cursorline = true;
    signcolumn = "yes";
    colorcolumn = "80";
    scrolloff = 8;
    sidescrolloff = 5;

    ignorecase = true;
    smartcase = true;
    incsearch = true;
    hlsearch = true;

    # swap
    swapfile = false;
    backup = false;
    writebackup = false;
    undofile = true;

    list = true;
    listchars = {
      tab = "󰑃 ";
      trail = "";
      extends = "󰮺";
      precedes = "󰮹";
    };

    foldmethod = "indent";
    foldlevel = 99;
    foldenable = false;
  };
}
