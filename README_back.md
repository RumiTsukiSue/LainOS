# LainOS

## 📚 Layout

- [flake.nix](flake.nix) base of the configuration
- [hosts](hosts) 🌳 per-host configurations that contain machine specific configurations
  - [desktop](hosts/desktop/) 🖥️ Desktop specific configuration
  - [laptop](hosts/laptop/) 💻 Laptop specific configuration
  - [vm](hosts/vm/) 🗄️ VM specific configuration
- [modules](modules) 🍱 modularized NixOS configurations
  - [core](modules/core/) ⚙️ Core NixOS configuration
  - [homes](modules/home/) 🏠 my [Home-Manager](https://github.com/nix-community/home-manager) config
- [pkgs](flake/pkgs) 📦 Packages Build from source
- [wallpapers](wallpapers/) 🌄 wallpapers collection

## 📓 Components

|                             |                                  NixOS + Hyprland                                   |
| --------------------------- | :---------------------------------------------------------------------------------: |
| **Window Manager**          |                                [Hyprland][Hyprland]                                 |
| **Bar**                     |                                  [Waybar][Waybar]                                   |
| **Application Launcher**    |                                    [rofi][rofi]                                     |
| **Notification Daemon**     |                                  [swaync][swaync]                                   |
| **Terminal Emulator**       |                                 [Ghostty][Ghostty]                                  |
| **Shell**                   |                     [zsh][zsh] + [powerlevel10k][powerlevel10k]                     |
| **Text Editor**             |                       [VSCodium][VSCodium] + [Neovim][Neovim]                       |
| **network management tool** | [NetworkManager][NetworkManager] + [network-manager-applet][network-manager-applet] |
| **System resource monitor** |                                    [Btop][Btop]                                     |
| **File Manager**            |                             [nemo][nemo] + [yazi][yazi]                             |
| **Fonts**                   |                              [Maple Mono][Maple Mono]                               |
| **Color Scheme**            |                            [Gruvbox Dark Hard][Gruvbox]                             |
| **GTK theme**               |                       [Colloid gtk theme][Colloid gtk theme]                        |
| **Cursor**                  |                       [Bibata-Modern-Ice][Bibata-Modern-Ice]                        |
| **Icons**                   |                            [Papirus-Dark][Papirus-Dark]                             |
| **Lockscreen**              |             [Hyprlock][Hyprlock] + [Swaylock-effects][Swaylock-effects]             |
| **Image Viewer**            |                                     [imv][imv]                                      |
| **Media Player**            |                                     [mpv][mpv]                                      |
| **Music Player**            |                               [audacious][audacious]                                |
| **Screenshot Software**     |                               [grimblast][grimblast]                                |
| **Screen Recording**        |                       [wf-recorder][wf-recorder] + [OBS][OBS]                       |
| **Clipboard**               |                         [wl-clip-persist][wl-clip-persist]                          |
| **Color Picker**            |                              [hyprpicker][hyprpicker]                               |

## 备忘录
- `nh os swith`     构建新世代并切换
- `nh os test`      构建新时代用于测试
- `nh os build`     构建新时代但不立即切换
- `nh os rollback`      回滚世代

## 📝 Shell aliases

<details>
<summary>
Utils (EXPAND)
</summary>

- `c` $\rightarrow$ `clear`
- `cd` $\rightarrow$ `z`
- `tt` $\rightarrow$ `gtrash put`
- `vim` $\rightarrow$ `nvim`
- `cat` $\rightarrow$ `bat`
- `nano` $\rightarrow$ `micro`
- `code` $\rightarrow$ `codium`
- `diff` $\rightarrow$ `delta --diff-so-fancy --side-by-side`
- `less` $\rightarrow$ `bat`
- `y` $\rightarrow$ `yazi`
- `py` $\rightarrow$ `python`
- `ipy` $\rightarrow$ `ipython`
- `icat` $\rightarrow$ `kitten icat`
- `dsize` $\rightarrow$ `du -hs`
- `pdf` $\rightarrow$ `tdf`
- `open` $\rightarrow$ `xdg-open`
- `space` $\rightarrow$ `ncdu`
- `man` $\rightarrow$ `BAT_THEME='default' batman`
- `l` $\rightarrow$ `eza --icons  -a --group-directories-first -1`
- `ll` $\rightarrow$ `eza --icons  -a --group-directories-first -1 --no-user --long`
- `tree` $\rightarrow$ `eza --icons --tree --group-directories-first`
</details>

<details>
<summary>
Nixos (EXPAND)
</summary>

- `cdnix` $\rightarrow$ `cd ~/nixos-config && codium ~/nixos-config`
- `ns` $\rightarrow$ `nom-shell --run zsh`
- `nix-test` $\rightarrow$ `nh os test`
- `nix-switch` $\rightarrow$ `nh os switch`
- `nix-update` $\rightarrow$ `nh os switch --update`
- `nix-clean` $\rightarrow$ `nh clean all --keep 5`
- `nix-search` $\rightarrow$ `nh search`
</details>

<details>
<summary>
Git (EXPAND)
</summary>

- `g` $\rightarrow$ `lazygit`
- `gf` $\rightarrow$ `onefetch --number-of-file-churns 0 --no-color-palette`
- `ga` $\rightarrow$ `git add`
- `gaa` $\rightarrow$ `git add --all`
- `gs` $\rightarrow$ `git status`
- `gb` $\rightarrow$ `git branch`
- `gm` $\rightarrow$ `git merge`
- `gd` $\rightarrow$ `git diff`
- `gpl` $\rightarrow$ `git pull`
- `gplo` $\rightarrow$ `git pull origin`
- `gps` $\rightarrow$ `git push`
- `gpso` $\rightarrow$ `git push origin`
- `gpst` $\rightarrow$ `git push --follow-tags`
- `gcl` $\rightarrow$ `git clone`
- `gc` $\rightarrow$ `git commit`
- `gcm` $\rightarrow$ `git commit -m`
- `gcma` $\rightarrow$ `git add --all && git commit -m`
- `gtag` $\rightarrow$ `git tag -ma`
- `gch` $\rightarrow$ `git checkout`
- `gchb` $\rightarrow$ `git checkout -b`
- `glog` $\rightarrow$ `git log --oneline --decorate --graph`
- `glol` $\rightarrow$ `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'`
- `glola` $\rightarrow$ `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all`
- `glols` $\rightarrow$ `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --stat`

</details>

## 🛠️ Scripts

All the scripts are in `modules/home/scripts/scripts/` and are exported as packages in `modules/home/scripts/default.nix`

<details>
<summary>
extract.sh 
</summary>

**Description:** This script extract `tar.gz` archives in the current directory.

**Usage:** `extract <archive_file>`

</details>

<details>
<summary>
compress.sh 
</summary>

**Description:** This script compress a file or a folder into a `tar.gz` archives which is created in the current directory with the name of the chosen file or folder.

**Usage:** `compress <file>` or `compress <folder>`

</details>

<details>
<summary>
toggle_blur.sh 
</summary>

**Description:** This script toggles the Hyprland blur effect. If the blur is currently enabled, it will be disabled, and if it's disabled, it will be turned on.

**Usage:** `toggle_blur`

</details>

<details>
<summary>
toggle_oppacity.sh 
</summary>

**Description:** This script toggles the Hyperland oppacity effect. If the oppacity is currently set to 0.90, it will be set to 1, and if it's set to 1, it will be set to 0.90.

**Usage:** `toggle_oppacity`

</details>

<details>
<summary>
maxfetch.sh 
</summary>

**Description:** This script is a modified version of the [jobcmax/maxfetch][maxfetch] script.

**Usage:** `maxfetch`

</details>

<details>
<summary>
music.sh 
</summary>

**Description:** This script is for managing Audacious (music player). If Audacious is currently running, it will be killed (stopping the music); otherwise, it will start Audacious in the 8th workspace and resume the music.

**Usage:** `music`

</details>

<details>
<summary>
runbg.sh 
</summary>

**Description:** This script runs a provided command along with its arguments and detaches it from the terminal. Handy for launching apps from the command line without blocking it.

**Usage:** `runbg <command> <arg1> <arg2> <...>`

</details>


<!-- Links -->

[Hyprland]: https://github.com/hyprwm/Hyprland
[Ghostty]: https://ghostty.org/
[powerlevel10k]: https://github.com/romkatv/powerlevel10k
[Waybar]: https://github.com/Alexays/Waybar
[rofi]: https://github.com/lbonn/rofi
[Btop]: https://github.com/aristocratos/btop
[nemo]: https://github.com/linuxmint/nemo/
[yazi]: https://github.com/sxyazi/yazi
[zsh]: https://ohmyz.sh/
[Swaylock-effects]: https://github.com/mortie/swaylock-effects
[Hyprlock]: https://github.com/hyprwm/hyprlock
[audacious]: https://audacious-media-player.org/
[mpv]: https://github.com/mpv-player/mpv
[VSCodium]: https://vscodium.com/
[Neovim]: https://github.com/neovim/neovim
[grimblast]: https://github.com/hyprwm/contrib
[imv]: https://sr.ht/~exec64/imv/
[swaync]: https://github.com/ErikReider/SwayNotificationCenter
[Maple Mono]: https://github.com/subframe7536/maple-font
[NetworkManager]: https://wiki.gnome.org/Projects/NetworkManager
[network-manager-applet]: https://gitlab.gnome.org/GNOME/network-manager-applet/
[wl-clip-persist]: https://github.com/Linus789/wl-clip-persist
[wf-recorder]: https://github.com/ammen99/wf-recorder
[hyprpicker]: https://github.com/hyprwm/hyprpicker
[Gruvbox]: https://github.com/morhetz/gruvbox
[Papirus-Dark]: https://github.com/PapirusDevelopmentTeam/papirus-icon-theme
[Bibata-Modern-Ice]: https://www.gnome-look.org/p/1197198
[maxfetch]: https://github.com/jobcmax/maxfetch
[Colloid gtk theme]: https://github.com/vinceliuice/Colloid-gtk-theme
[OBS]: https://obsproject.com/
