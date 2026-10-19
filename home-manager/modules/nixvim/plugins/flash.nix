{ ... }:

{
  plugins.flash = {
    enable = true;
    settings = {
      # 让 / 和 ? 搜索也显示跳转标签
      modes = {
        search = {
          enabled = true;
        };
      };

      # 标签字符
      labels = "asdfghjklqwertyuiopzxcvbnm";

      # 搜索跨窗口
      search = {
        multi_window = true;
        forward = true;
        wrap = true;
      };

      # 跳转行为
      jump = {
        autojump = true;
        nohlsearch = false;
      };

      # Treesitter 模式
      treesitter = {
        enable = true;
      };

      # 远程操作
      remote = {
        enable = true;
      };
    };
  };
}
