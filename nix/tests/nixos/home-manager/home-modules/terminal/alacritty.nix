{ pkgs, pkgs-unstable, config, ... }:
{
  programs.alacritty = {
    
    enable = true;

    settings = {

      terminal.shell = {
        program = "${pkgs.zsh}/bin/zsh";
        args = [ "--login" ];
      };

      font = {
        size = 14;
        normal = {
          family = "InconsolataLGC Nerd Font";
          style = "Regular";
        };
      };

      cursor = {
        style = {
          shape = "Beam";
          blinking = "Always";
        };
        blink_interval = 600;
        blink_timeout = 0;
      };

      colors = {

        primary = {
          background = "#262A37";
          foreground = "#e3f3ff";
        };

        normal = {
          black = "#262A37";
          red = "#f06989";
          green = "#66a8ff";
          yellow = "#fff7c4";
          blue = "#8cbeff";
          magenta = "#d6feff"; 
          cyan = "#c2feff";
          white = "#e3f3ff";
        };

        bright = {
          black = "#333F4C";
          red = "#f06989";
          green = "#66a8ff";
          yellow = "#fff7c4";
          blue = "#8cbeff";
          magenta = "#d6feff"; 
          cyan = "#c2feff";
          white = "#e3f3ff";
        };

        dim = {
          black = "#353f4f";
          red = "#f06989";
          green = "#66a8ff";
          yellow = "#fff7c4";
          blue = "#8cbeff";
          magenta = "#d6feff"; 
          cyan = "#c2feff";
          white = "#e3f3ff";
        };

      };
    };
  };
}
