{ config, pkgs, ... }:
{
  programs.nixvim = {
    plugins.nvim-autopairs = {
      enable = true;
      settings = {
        # 启用 <CR> (Enter) 映射：括号内按 Enter 可跳出或插入新行
        map_cr = true;
        # 启用 Treesitter 检查（如果您启用了 Treesitter 插件，可取消注释）
        # check_ts = true;
        # 禁用某些文件类型（可选，根据需要调整）
        disable_filetype = [ "TelescopePrompt" "vim" ];
        # 快速包裹选择（可选：映射 <M-e> 来包裹选中文本）
        fast_wrap = {
          map = "<M-e>";
          chars = [ "{[" "(\"'" ];
          pattern = "[=[%)%]%}%)%]]=]";
          end_key = "$";
          keys = "qwertyuiopzxcvbnmasdfghjkl";
          check_comma = true;
          highlight = "Search";
          highlight_grey = "Comment";
        };
      };
    };
    # 新增：Lua 代码来集成 nvim-autopairs 与 cmp（处理补全时的括号）
    extraConfigLua = ''
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      require('cmp').event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )
    '';
  };
}
