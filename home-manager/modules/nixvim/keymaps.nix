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
    # Flash 跳转
    {
      mode = [ "n" "x" "o" ];
      key = "s";
      action.__raw = ''function() require("flash").jump() end'';
      options = { silent = true; desc = "Flash jump"; };
    }
    {
      mode = [ "n" "x" "o" ];
      key = "S";
      action.__raw = ''function() require("flash").treesitter() end'';
      options = { silent = true; desc = "Flash Treesitter"; };
    }
    {
      mode = "o";
      key = "r";
      action.__raw = ''function() require("flash").remote() end'';
      options = { silent = true; desc = "Remote Flash"; };
    }
    {
      mode = [ "o" "x" ];
      key = "R";
      action.__raw = ''function() require("flash").treesitter_search() end'';
      options = { silent = true; desc = "Treesitter Search"; };
    }
  ];
}
