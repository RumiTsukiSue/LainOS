{ inputs,  config,  pkgs, ... }:
{
  imports = [
    inputs.nixvim.homeModules.nixvim
    # cmp 相关：代码补全和自动配对
    ./plugins/cmp/autopairs.nix             # 自动括号配对插件配置
    ./plugins/cmp/cmp.nix                   # 代码补全框架配置（nvim-cmp）
    # editor 相关：编辑器增强插件
    ./plugins/editor/indent-blankline.nix   # 缩进线可视化配置
    ./plugins/editor/neo-tree.nix           # 文件浏览器（Neo-tree）配置
    # ui 相关：用户界面增强插件
    ./plugins/ui/bufferline.nix             # 缓冲区标签栏配置
    ./plugins/ui/lualine.nix                # 状态栏配置
    ./plugins/ui/startup.nix                # 启动页配置
    # utils 相关：实用工具插件
    ./plugins/utils/markdown-preview.nix    # Markdown 预览配置
    ./plugins/utils/telescope.nix           # 列表模糊查找器
    ./plugins/utils/web-devicons.nix
    ./plugins/utils/whichkey.nix            # 显示按键提示
  ];

  programs.nixvim = {
    enable = true;
    vimAlias = true;                        # 创建 vim 别名
    globals.mapleader = " ";                # leader键设置为空格
    opts = {
      encoding = "utf-8";
      fileencoding = "utf-8";
      mouse = "a";
      showmode = true;                      # 在底部显示当前模式（插入、命令等）。
      showcmd = true;                       # 命令模式下，在底部显示当前键入的指令。
      cmdheight = 0;                        # 底部空行
      termguicolors = true;                 # 真彩色支持
      autoindent = true;                    # 回车键缩进跟上一行保持一致
      number = true;                        # 显示行数
      expandtab = true;                     # 将制表符输入转换为空格
      tabstop = 4;                          # 一个制表符的宽度
      shiftwidth = 2;                       # 自动缩进的宽度
      softtabstop = 2;                      # 按下Tab键或:Backspace键移动的逻辑宽度
      clipboard = "unnamedplus";            # unnamedplus使用加寄存器链接系统剪贴板
    };
    # 如果你有自定义 Lua 文件，可以在这里加载
    extraConfigLua = ''

		'';
  };

  home.packages = with pkgs; [
    wl-clipboard
  ];
}
