{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Multimedia
    audacity
    obs-studio
    pavucontrol
    video-trimmer
    vlc

    # Office
    wechat
    (qq.override {
      commandLineArgs = "--enable-features=UseOzonePlatform --ozone-platform=wayland --enable-wayland-ime";
    })
    google-chrome
    wpsoffice-cn
    (vscode.override {
      commandLineArgs = "--enable-features=UseOzonePlatform --ozone-platform=wayland --enable-wayland-ime";
    })

    nwg-displays
  ];
}
