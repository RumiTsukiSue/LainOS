{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # gnome桌面依赖
    dconf-editor
    zenity                                # 桌面环境弹窗支持（用于图形化交互）
    gnome-tweaks                          # gome优化
    gnome-shell
    gnomeExtensions.kimpanel
    # gnomeExtensions.gnome-shell-extension-native-window-placement
    # gnome-shell-extension-removable-drive-menu
    # gnome-shell-extension-system-monitor
    # gnome-shell-extension-workspace-indicator

    # hyprland使用的软件
    evince
    file-roller
    gnome-text-editor
  ];

#  # 统一 dconf 配置
#  dconf.settings = {
#    # 桌面界面设置
#    "org/gnome/desktop/interface" = {
#      font-name = "Noto Sans CJK SC Regular 14";
#      document-font-name = "Noto Serif CJK SC Regular 14";
#      monospace-font-name = "Hack Nerd Font Bold 14";
#
#    };
#
#    # 文本编辑器设置
#    #"org/gnome/TextEditor" = {
#    #  highlight-current-line = true;
#    #  indent-style = "space";
#    #  restore-session = false;
#    #  show-grid = false;
#    #  show-line-numbers = true;
#    #  show-right-margin = false;
#    #  style-scheme = "builder-dark";
#    #  style-variant = "dark";
#    #  tab-width = "uint32 4";
#    #  use-system-font = false;
#    #  wrap-text = false;
#    #};
#  };
}

