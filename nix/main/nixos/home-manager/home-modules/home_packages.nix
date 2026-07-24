{ pkgs, pkgs-unstable, config, lib, ... }:
{
  home = {
    packages = [
      pkgs.cbonsai 
      pkgs.pipes 
      pkgs.clock-rs
      pkgs.mako 
      pkgs.onlyoffice-desktopeditors 
      pkgs.fuzzel 
      pkgs.waybar 
      pkgs.fastfetch 
      pkgs.lavat 
      pkgs.btop 
      pkgs.alsa-utils 
      pkgs.fzf 
      pkgs.zenity 
      pkgs.wlogout 
      pkgs.hyprlock 
      pkgs.zoxide 
      pkgs.tmux 
      pkgs.mpd 
      pkgs.ncmpcpp 
      pkgs.mpc 
      pkgs-unstable.yt-dlp 
      pkgs.hyprpicker
      pkgs.hypridle
      pkgs.zed-editor
      pkgs.cliphist
      pkgs.grim
      pkgs.slurp
      pkgs.tmux
      pkgs.manga-cli
      pkgs-unstable.protonup-rs
      pkgs.jp2a
      pkgs.ffmpeg
      pkgs.gcc
      # pkgs.ddcutil
      # pkgs.i2c-tools
      # pkgs.brillo
    ];
  };
}
