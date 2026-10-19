{ ... }:

{
  plugins.autoclose = {
    enable = true;

    settings = {
      options = {
        # 在这些文件类型里禁用自动闭合
        disabled_filetypes = [
          "text"
          "markdown"
          "tex"
        ];

        # 在括号内输入空格时，自动补全配对
        pair_spaces = true;

        # 禁用自动闭合的按键（这里禁用反引号，避免和 markdown 冲突）
        disable_command = false;

        # 自动闭合时是否忽略注释区域
        ignore_case = false;
      };

      keys = {
        # 自定义配对：输入 $$ 时自动补全为 $$$$，光标在中间
        "$" = {
          escape = true;
          close = true;
          pair = "$$";
        };

        # 自定义配对：输入 ` 时自动补全为 ``
        "`" = {
          escape = true;
          close = true;
          pair = "``";
        };

        # 默认的括号配对（如果不写，autoclose 会用自己的默认值）
        "(" = { escape = true; close = true; pair = "()"; };
        "[" = { escape = true; close = true; pair = "[]"; };
        "{" = { escape = true; close = true; pair = "{}"; };
        "'" = { escape = true; close = true; pair = "''"; };
        "\"" = { escape = true; close = true; pair = "\"\""; };
      };
    };
  };
}
