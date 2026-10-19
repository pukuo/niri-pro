{ pkgs, ... }:

{
  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    x11.enable = true;
    name = "phinger-cursors-dark";   # 具体主题名看包里的目录
    package = pkgs.phinger-cursors;
    size = 24;
  };
}
