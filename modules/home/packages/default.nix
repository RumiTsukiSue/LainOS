{ ... }:
{
  imports = [
    ./cli/cli.nix
    ./cli/fzf.nix                                   # fuzzy finder
    ./cli/git.nix                                   # version control
    ./cli/lazygit.nix                               # git tool
    ./cli/ssh.nix                                   # ssh config

    ./clash.nix
    ./custom.nix
    ./gui.nix
  ];
}
