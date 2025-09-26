{ config, pkgs, ... }: 
{
  programs.nixvim = {
    plugins.markdown-preview = {
      enable = true;

      settings = {
        auto_start = 1;  # 自动启动预览
        auto_close = 1;  # 关闭 Markdown 文件时自动关闭预览
        refresh_slow = 0;  # 实时刷新
        browser = "google-chrome-stable";  # 指定浏览器（或 chrome 等）
        theme = "dark";  # 预览主题（dark/light）
      };
    };

    # 可选：添加键映射来触发预览
    keymaps = [
      {
        mode = "n";  # Normal 模式
        key = "<leader>mp";  # Leader + mp 触发
        action = "<cmd>MarkdownPreviewToggle<CR>";
        options = { silent = true; desc = "Toggle Markdown Preview"; };
      }
    ];
  };
}

