{ ... }:
{
  imports = [
    ./audacious/audacious.nix                   # music player
    ./editors/flow/flow.nix                     # flow editor
    #./editors/micro/micro.nix                   # nano replacement
    ./editors/nvim
    ./fastfetch/fastfetch.nix                   # fetch tool
    #./file-managers/nemo/nemo.nix               # nemo file-manager
    ./file-managers/superfile/superfile.nix     # terminal file manager
    ./file-managers/yazi/default.nix            # yazi file-manager
    ./gnome                                     # gnome apps
    ./hyprland                                  # window manager
    ./nix-search/nix-search.nix                 # TUI to search nixpkgs
    ./packages
    ./terminal
    ./scripts/scripts.nix                       # personal scripts
    ./zsh                                       # shell

    ./bat.nix                                   # better cat command
    ./btop.nix                                  # resouces monitor 
    ./cava.nix                                  # audio visualizer
    ./gaming.nix                                # packages related to gaming
    ./viewnior.nix                              # image viewer
    ./xdg-mimes.nix                             # xdg config
  ];
}
