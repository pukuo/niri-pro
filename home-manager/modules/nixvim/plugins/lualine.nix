{ ... }:
{
  plugins.lualine = {
    enable = true;

    settings = {
      options = {
        # 让组件之间无边框
        component_separators = "";
        section_separators = "";
        
        # 自定义主题：将所有区块背景设为透明 (NONE)
        theme = {
          normal = {
            a = { bg = "NONE"; };
            b = { bg = "NONE"; };
            c = { bg = "NONE"; };
          };
          inactive = {
            a = { bg = "NONE"; };
            b = { bg = "NONE"; };
            c = { bg = "NONE"; };
          };
        };
        
        globalstatus = true;
        disabled_filetypes = {
          statusline = [ "dashboard" "alpha" "starter" "snacks_dashboard" ];
        };
      };

      inactive_sections = {
        lualine_x = [ "filename" "filetype" ];
      };

      sections = {
        lualine_a = [
          {
            __unkeyed-1 = "mode";
            fmt = "string.lower";
            color = { fg = "#cba6f7"; bg = "NONE"; }; # Catppuccin Mauve
            separator = { left = ""; right = ""; };
          }
        ];

        lualine_b = [
          {
            __unkeyed-1 = "branch";
            icon = ""; # 修复了乱码图标
            color = { fg = "#89b4fa"; bg = "NONE"; }; # Catppuccin Blue
            separator = { left = ""; right = ""; };
          }
          {
            __unkeyed-1 = "diff";
            separator = { left = ""; right = ""; };
          }
        ];

        lualine_c = [
          {
            __unkeyed-1 = "diagnostics"; # 修复了拼写错误
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = "󰌵 ";
            };
            color = { fg = "#f38ba8"; bg = "NONE"; }; # Catppuccin Red
            separator = { left = ""; right = ""; };
          }
        ];

        lualine_x = [ ]; # 不要放空字符串，空列表即可

        lualine_y = [
          {
            __unkeyed-1 = "filename";
            color = { fg = "#cdd6f4"; bg = "NONE"; }; # Catppuccin Text
            separator = { left = ""; right = ""; };
          }
        ];

        lualine_z = [
          {
            __unkeyed-1 = "location";
            color = { fg = "#a6e3a1"; bg = "NONE"; }; # Catppuccin Green
            separator = { left = ""; right = ""; };
          }
        ];
      };
    };
  };
}
