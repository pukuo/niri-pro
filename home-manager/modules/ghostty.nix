{ pkgs, ... }:
{
  programs.ghostty = {
    enable = true;
    # 在 Linux 上，通常不需要手动指定 package，Home Manager 会默认使用 pkgs.ghostty
    # 但如果你需要显式指定，可以这样写：
    package = pkgs.ghostty;

    # 根据你使用的 Shell 开启集成功能，比如 bash
    enableBashIntegration = true;

    # 所有配置项都写在 settings 属性集里
    settings = {
      theme = "Catppuccin Mocha"; # 选择一个主题
      background-opacity = 0.95; # 设置背景透明度
      font-family = "BlexMono Nerd Font"; # 设置字体
      font-size = 12; # 设置字号

      adjust-cell-width = "15%";
      adjust-cell-height = "20%";

      window-padding-x = 8;
      window-padding-y = 8;
      window-width = 120;
      window-height = 35;

      # 自定义快捷键
      keybind = [
        "ctrl+h=goto_split:left"
        "ctrl+l=goto_split:right"
      ];
    };
  };
}
