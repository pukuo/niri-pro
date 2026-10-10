{ ... }:

{
  # 链接 Mellow 主题文件到 ~/.local/share/fcitx5/themes/
  xdg.dataFile = {
    "fcitx5/themes/catppuccin-mocha-pink" = {
      source = ../../config/fcitx5/themes/catppuccin-mocha-pink;
      recursive = true;
    };
    "fcitx5/themes/catppuccin-mocha-sapphire" = {
      source = ../../config/fcitx5/themes/catppuccin-mocha-sapphire;
      recursive = true;
    };
  };

  # 设置 classicui 使用 Mellow 主题
  xdg.configFile."fcitx5/conf/classicui.conf".text = ''
    Theme=catppuccin-mocha-sapphire
    DarkTheme=catppuccin-mocha-pink
    UseDarkTheme=True
    Font="JetbrainsMono Nerd Font 10"
    MenuFont="JetbrainsMono Nerd Font 10"
    TrayFont="JetbrainsMono Nerd Font 10"
  '';
}
