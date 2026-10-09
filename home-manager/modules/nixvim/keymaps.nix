{ ... }:

{
  keymaps = [
    {
      mode = "n";
      key = "<leader>w";
      action = "<cmd>w<CR>";
      options = { silent = true; };
    }
    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>q<CR>";
      options = { silent = true; };
    }
    {
      mode = "i";
      key = "jk";
      action = "<Esc>";
      options = { silent = true; };
    }
  ];
}
