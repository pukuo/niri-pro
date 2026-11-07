{ lib, ... }:

{
  plugins.blink-cmp = {
    enable = true;
    # 如果你之前配了其他 LSP，这里设为 false 可以防止 Blink 覆盖或接管你现有的 LSP 补全能力
    setupLspCapabilities = false;

    settings = {
      keymap = {
        preset = "super-tab";
      };

      completion = {
        # ghost_text.enabled = true; # 内联提示，如果觉得乱可以开启
        menu = {
          enabled = true;
          border = "rounded";
        };
        documentation = {
          auto_show = true;
          window = {
            border = "rounded";
          };
        };
      };

      signature = {
        enabled = true;
        window = {
          border = "rounded";
        };
      };

      sources = {
        default = [
          "lsp"
          "path"
          "snippets"
          "buffer"
        ];
      };

      cmdline = {
        completion = {
          menu = {
            auto_show = true;
          };
        };
        # 使用 __raw 包装 Lua 函数，让 blink 动态判断当前是在搜索还是在敲命令
        sources = {
          __raw = ''
            function()
              local type = vim.fn.getcmdtype()
              if type == '/' or type == '?' then
                return { 'buffer' }
              end
              if type == ':' then
                return { 'cmdline' }
              end
              return {}
            end
          '';
        };
        keymap = {
          preset = "super-tab";
        };
      };
    };
  };
}
