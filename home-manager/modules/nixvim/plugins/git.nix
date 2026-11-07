{ ... }:

{
  plugins = {
    # 启用 Trouble 插件
    trouble.enable = true;

    # 配置 GitSigns 并开启行内 Blame
    gitsigns = {
      enable = true;
      settings = {
        trouble = true; # 允许 Gitsigns 的内容在 Trouble 中显示
        current_line_blame = true; # 开启当前行的行内 Blame
        signs = {
          add = { text = "│"; };
          change = { text = "│"; };
          delete = { text = "_"; };
          topdelete = { text = "‾"; };
          changedelete = { text = "~"; };
          untracked = { text = "│"; };
        };
      };
    };
  };
}
