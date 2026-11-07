{ ... }:

{
  autoGroups = {
    highlight_yank = { clear = true; };
    indentscope = { clear = true; };
    restore_cursor = { clear = true; };
  };

  autoCmd = [
    # 1. 复制时高亮
    {
      group = "highlight_yank";
      event = [ "TextYankPost" ];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            vim.highlight.on_yank()
          end
        '';
      };
    }
    # 2. 在特定窗口中禁用 mini.indentscope 的缩进线
    {
      group = "indentscope";
      event = [ "FileType" ];
      pattern = [
        "help"
        "archlens"
        "snacks_dashboard"
        "neo-tree"
        "Trouble"
        "trouble"
        "notify"
      ];
      callback = {
        __raw = ''
          function()
            vim.b.miniindentscope_disable = true
          end
        '';
      };
    }
    # 3. 重新打开文件时恢复上次的光标位置
    {
      group = "restore_cursor";
      event = [ "BufReadPost" ];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            if
              vim.fn.line "'\"" > 1
              and vim.fn.line "'\"" <= vim.fn.line "$"
              and vim.bo.filetype ~= "commit"
              and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
            then
              vim.cmd "normal! g`\""
            end
          end
        '';
      };
    }
  ];
}
