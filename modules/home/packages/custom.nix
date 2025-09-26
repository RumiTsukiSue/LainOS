{ pkgs, ... }:
let
  _2048 = pkgs.callPackage ../../../pkgs/2048/default.nix { };
  _cherry-studio = pkgs.callPackage ../../../pkgs/cherry-studio/default.nix {};
in
{
  home.packages = [
    _2048
    (_cherry-studio.override {
      commandLineArgs = "--enable-features=UseOzonePlatform --ozone-platform=wayland";
    })
  ];
}
