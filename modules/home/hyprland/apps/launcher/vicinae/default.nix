{ inputs, ... }:
{
  imports = [ inputs.vicinae.homeManagerModules.default ];

  services.vicinae = {
    enable = true;
    autoStart = true;
  };

  xdg.configFile."vicinae/vicinae.json".source = ./vicinae.json;
  xdg.configFile."vicinae/themes/gruvbox-dark-hard.json".source = ./gruvbox-dark-hard.json;
  xdg.configFile."vicinae/themes/lain-dark-pink.json".source = ./lain-dark-pink.json;
}
