{ pkgs, inputs, ...}:

{
  imports = [ inputs.stylix.nixosModules.stylix ];

  stylix = {
    enable = true;
    
    # image = ./../../wallpapers/otherWallpaper/lain/anon.png;

    polarity = "dark";

    # base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";
    
    # 单独设置配色：
    # swaylock
    # swaync
    # waybar
    # rofi
    # vicinae
    # hyprland
    # hyprlock

     base16Scheme = {
       base00 = "121215"; # 极致深邃的暗灰，极致的深沉和低饱和度。
       base01 = "1A1A1D"; # 比 base00 稍亮，作为次要背景或分隔线。
       base02 = "4D4F60"; # UI 元素背景，如状态栏、活动行背景。
       base03 = "626473"; # 边框和次要文本，一个更亮的灰色，用于注释等。
       base04 = "9A9AAD"; # 暗淡文本，一个柔和的蓝灰色。
       # base05 = "E0E0D8"; # 默认文本色，明显更暗的暖白色，提供良好对比度。
       # base06 = "F0F0E8"; # 较亮文本，介于默认和最亮之间，仍带暖意。
       # base07 = "FCFCF8"; # 最亮文本/高亮，接近纯白但保留微妙暖色调。
       base05 = "EEEDE4"; # 默认文本色，略微变暗的暖白色，依然明亮。
       base06 = "F4F3EC"; # 较亮文本，几乎是纯白色。
       base07 = "F8F8F2"; # 最亮文本/高亮，经典的 Dracula 前景色。
       base08 = "FF5555"; # 红色 (Red)
       base09 = "FFB86C"; # 橙色 (Orange)
       base0A = "FFF08C"; # 黄色 (Yellow)
       base0B = "7BC98D"; # 绿色 (Green)
       base0C = "8BE9FD"; # 青色 (Cyan)
       base0D = "FF8888"; # 珊瑚粉 (Blue)
       base0E = "FF79C6"; # 品红色 (Magenta)
       base0F = "BD93F9"; # 柔紫色 (Violet -> Soft Violet)
     };

    opacity.terminal = 1.0;

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 22;
    };

    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.hack;
        name = "Hack Nerd Font";
      };
      sansSerif = {
        package = pkgs.noto-fonts-cjk-sans;
        name = "Noto-fonts-cjk-sans";
      };
      serif = {
        package = pkgs.noto-fonts-cjk-serif;
        name = "Noto-fonts-cjk-serif";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
      sizes = {
        applications = 14;
        terminal = 15;
        desktop = 14;
        popups = 14;
      };
    };
  };
}
