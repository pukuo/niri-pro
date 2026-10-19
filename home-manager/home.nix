{ config, pkgs, inputs, ... }:
let
  dotfiles = "${config.home.homeDirectory}/nixos-dotfiles/config";
  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;

  configs = {
    niri = "niri";
    waybar = "waybar";
  };
in
{
  
  imports = [
    ./modules/bash.nix
    ./modules/nixvim.nix
    ./modules/ghostty.nix
    ./modules/fuzzel.nix
    ./modules/git.nix
    ./modules/ssh.nix
    ./modules/fcitx5.nix
    ./modules/cursor.nix
  ];

  home.username = "guolisen";
  home.homeDirectory = "/home/guolisen";
  home.stateVersion = "26.05";

  programs.waybar.enable = true;

  home.packages = with pkgs; [
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  xdg.configFile = builtins.mapAttrs
    (name: subpath: {
      source = create_symlink "${dotfiles}/${subpath}";
      recursive = true;
    })
    configs;

}
