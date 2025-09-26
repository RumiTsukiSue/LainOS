{ inputs, ... }:
{
  imports = [
    ./apps
    ./animations/animations-end4.nix
    ./hyprland.nix
    ./config.nix
    ./hyprlock.nix
    ./variables.nix
    ./windowrules.nix
    inputs.hyprland.homeManagerModules.default
  ];
}
