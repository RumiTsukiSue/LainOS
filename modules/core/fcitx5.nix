{ config, pkgs, ... }:
{
  # 输入法配置
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
    fcitx5.addons = with pkgs; [
      kdePackages.fcitx5-qt
      libsForQt5.fcitx5-qt
      fcitx5-gtk
      fcitx5-rime
      fcitx5-chinese-addons
      fcitx5-material-color
    ];
  };
}
