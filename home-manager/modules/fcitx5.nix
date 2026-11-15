{ config, ... }:

let
  dotfiles = "${config.home.homeDirectory}/nixos-dotfiles/config";
in
{
  xdg.dataFile = {
    # 1. 链接你的主题
    "fcitx5/themes/catppuccin-mocha-pink".source = ../../config/fcitx5/themes/catppuccin-mocha-pink;
    "fcitx5/themes/catppuccin-mocha-sapphire".source = ../../config/fcitx5/themes/catppuccin-mocha-sapphire;

    # 2. 优雅链接 Rime 的单独配置文件
    "fcitx5/rime/default.custom.yaml".source =
      config.lib.file.mkOutOfStoreSymlink "${dotfiles}/fcitx5/custom/default.custom.yaml";
  };

  xdg.configFile."fcitx5/conf/classicui.conf".text = ''
    Theme=catppuccin-mocha-sapphire
    DarkTheme=catppuccin-mocha-pink
    UseDarkTheme=True
    Font="BlexMono Nerd Font 10"
    MenuFont="BlexMono Nerd Font 10"
    TrayFont="BlexMono Nerd Font 10"
  '';
}
