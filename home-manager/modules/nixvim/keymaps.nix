{ ... }:

{
  keymaps = [
    # ==========================================
    # 基础保存与退出
    # ==========================================
    {
      mode = "n";
      key = "<leader>w";
      action = "<cmd>w<CR>";
      options = { silent = true; };
    }
    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>q<CR>";
      options = { silent = true; };
    }
    {
      mode = "i";
      key = "jk";
      action = "<Esc>";
      options = { silent = true; };
    }

    # ==========================================
    # Flash 跳转
    # ==========================================
    {
      mode = [ "n" "x" "o" ];
      key = "s";
      action.__raw = ''function() require("flash").jump() end'';
      options = { silent = true; desc = "Flash jump"; };
    }
    {
      mode = [ "n" "x" "o" ];
      key = "S";
      action.__raw = ''function() require("flash").treesitter() end'';
      options = { silent = true; desc = "Flash Treesitter"; };
    }
    {
      mode = "o";
      key = "r";
      action.__raw = ''function() require("flash").remote() end'';
      options = { silent = true; desc = "Remote Flash"; };
    }
    {
      mode = [ "o" "x" ];
      key = "R";
      action.__raw = ''function() require("flash").treesitter_search() end'';
      options = { silent = true; desc = "Treesitter Search"; };
    }

    # ==========================================
    # LSP 悬浮与诊断
    # ==========================================
    {
      key = "K";
      action = "<cmd>lua vim.lsp.buf.hover()<cr>";
      options = { desc = "显示悬浮文档"; };
    }
    {
      key = "<leader>cd";
      action = "<cmd>lua vim.diagnostic.open_float()<cr>";
      options = { desc = "打开当前行的诊断信息浮窗"; };
    }
    {
      key = "[d";
      action = "<cmd>lua vim.diagnostic.jump({ count=-1, float=true })<cr>";
      options = { desc = "跳转到上一个诊断"; };
    }
    {
      key = "]d";
      action = "<cmd>lua vim.diagnostic.jump({ count=1, float=true })<cr>";
      options = { desc = "跳转到下一个诊断"; };
    }
    {
      key = "<leader>cR";
      action = "<cmd>lua vim.lsp.buf.rename()<cr>";
      options = { desc = "重命名符号"; };
    }
    {
      key = "<leader>ca";
      action = "<cmd>lua vim.lsp.buf.code_action()<cr>";
      options = { desc = "代码操作"; };
    }
    {
      key = "gD";
      action = "<cmd>lua vim.lsp.buf.declaration()<cr>";
      options = { desc = "跳转到声明"; };
    }
    {
      key = "gd";
      action = "<cmd>lua vim.lsp.buf.definition()<cr>";
      options = { desc = "转到定义"; };
    }
    {
      key = "gi";
      action = "<cmd>lua vim.lsp.buf.implementation()<cr>";
      options = { desc = "查找实现"; };
    }
    {
      key = "gr";
      action = "<cmd>lua vim.lsp.buf.references()<cr>";
      options = { desc = "查找引用"; };
    }
    {
      key = "gt";
      action = "<cmd>lua vim.lsp.buf.type_definition()<cr>";
      options = { desc = "跳转到类型定义"; };
    }

    # ==========================================
    # Telescope 高级查找
    # ==========================================
    {
      key = "<leader>ci";
      action = "<cmd>Telescope lsp_implementations<cr>";
      options = { desc = "查找实现 (Telescope)"; };
    }
    {
      key = "<leader>cW";
      action = "<cmd>Telescope diagnostics<cr>";
      options = { desc = "全局诊断 (Telescope)"; };
    }
    {
      key = "<leader>cw";
      action = "<cmd>Telescope lsp_workspace_symbols<cr>";
      options = { desc = "查找工作区符号"; };
    }
    {
      key = "<leader>cf";
      action = "<cmd>Telescope lsp_document_symbols<cr>";
      options = { desc = "文件大纲"; };
    }
    {
      key = "<leader>c[";
      action = "<cmd>Telescope lsp_incoming_calls<cr>";
      options = { desc = "被调列表"; };
    }
    {
      key = "<leader>c]";
      action = "<cmd>Telescope lsp_outgoing_calls<cr>";
      options = { desc = "调用列表"; };
    }
  ];
}
