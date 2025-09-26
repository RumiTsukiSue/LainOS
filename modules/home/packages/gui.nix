{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Multimedia
    audacity
    gimp
    obs-studio
    pavucontrol
    soundwireserver
    video-trimmer
    vlc

    # Office
    gnome-calculator
    wechat
    google-chrome

    wpsoffice-cn
    
    (vscode.override {
      commandLineArgs = "--enable-features=UseOzonePlatform --ozone-platform=wayland";
    })
    # (qq.override {
    #   commandLineArgs = "--enable-features=UseOzonePlatform --ozone-platform=wayland";
    # })

    nwg-displays
  ];
}
