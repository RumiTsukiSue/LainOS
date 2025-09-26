{ pkgs, ... }:

{
  # 重新启用 Home Manager 的 GTK 模块，这是正确的“单一事实来源”
  gtk = {
    enable = true;
#    theme = {
#      name = "Colloid-Red-Dark-Everforest";
#      package = (pkgs.colloid-gtk-theme.override {
#        colorVariants = [ "dark" ];
#        themeVariants = [ "red" ];
#        tweaks = [ "everforest" "rimless" ];
#      });
#    };
    iconTheme = {
      name = "Papirus-Dark";
      package = (pkgs.papirus-icon-theme.override { color = "green"; });
    };
  };
}
