{ ... }:

{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "BlexMono Nerd Font:size=13";
        dpi-aware = "auto";
        use-bold = "yes";
        terminal = "ghostty -e";
        width = 40;
        lines = 10;
        horizontal-pad = 20;
        vertical-pad = 20;
        inner-pad = 12;
        prompt = "❯ ";
        match-counter = "yes";
        icon-theme = "Breeze_Light";
      };

      colors = {
        background = "1e1e2eF5";   # base
        text = "cdd6f4";           # text
        prompt = "cba6f7";         # mauve
        placeholder = "6c7086";    # overlay0
        input = "cdd6f4";          # text
        match = "f9e2af";          # yellow
        selection = "585b70";      # surface2
        selection-text = "cdd6f4"; # text
        selection-match = "f9e2af";# yellow
        counter = "a6adc8";        # subtext0
        border = "cba6f7";         # mauve
      };

      border = {
        width = 2;
        radius = 16;
        selection-radius = 8;
      };
    };
  };
}
