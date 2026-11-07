{ lib, pkgs, ... }:

{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    
    servers = {
      # 只保留 Nix 语言服务器
      nil_ls = {
        enable = true;
          settings = {
            nil = {
              nix = {
                flake.autoArchive = false;
              };
            };
        };
      };

      # Shell 语言服务器
      bashls = {
        enable = true;
      };

      # 建议保留 statix，用于检查 Nix 代码里的反模式和语法问题
      statix.enable = true;
    };

  };

  # 诊断提示的外观（圆角、错误图标、开启下划线）
  extraConfigLua = ''
    vim.diagnostic.config({
      virtual_text = true, -- 在行尾显示诊断提示文字
      signs = {
        active = true,
        text = {
          [vim.diagnostic.severity.ERROR] = "",
          [vim.diagnostic.severity.WARN] = "",
          [vim.diagnostic.severity.INFO] = "",
          [vim.diagnostic.severity.HINT] = "💡",
        },
      },
      update_in_insert = false, -- 在插入模式下不更新诊断，防止卡顿
      underline = true,
      severity_sort = true,
      float = { border = "rounded" }, -- 悬浮窗圆角
    })
  '';
}
