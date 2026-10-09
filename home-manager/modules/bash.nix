{ ... }:
{
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos btw";
      nrs = "sudo nixos-rebuild --option substituters https://mirrors.ustc.edu.cn/nix-channels/store switch --flake ~/nixos-dotfiles#nexus";
      gc = "sudo nix-collect-garbage -d";
    };
    initExtra = ''
      export PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '
    '';
  };
}
