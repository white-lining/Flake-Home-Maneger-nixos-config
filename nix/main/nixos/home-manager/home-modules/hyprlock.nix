{ pkgs, config, ... }:
{
  programs.hyprlock = {
    enable = true;

    settings = {

      background = [
        {
          path = "/home/kumoren/projects/nix/HakurenNixos/resources/CyndiWave.png";
          blur_passes = 2;
          blur_size = 2;
        }
      ];

      general = {
        no_fade_in = false;
        disable_loading_bar = false;
      };

      image = {
        path = "/home/kumoren/projects/nix/HakurenNixos/resources/Mountain.jpg";
        border_size = 2;
        border_color = "rgba(238, 198, 245, 1)";
        size = 160;
        rounding = -1;
        halign = "left";
        valign = "center";
        position = "0,40";
      };

      input-field = [
        {
          monitor = "";
          size = "300, 80";
          position = "0, 0";
          dots_center = true;
          fade_on_empty = false;
          outline_thickness = 2;

          # Color of the inner box
          inner_color = "rgba(227, 244, 255, 0.9)";
          # Color of the font
          font_color = "rgba(67, 76, 94, 0.9)";
          # Color of the border
          outer_color = "rgba(90, 143, 184, 0.9)";
          # Color for when failing the authorization
          fail_color = "rgba(238, 198, 245, 0.9)";

          rounding = 0;

          font_family = "InconsolataLGC Nerd Font";
          placeholder_text = "Ware wa...";
          hide_input = false;

          halign = "left";
          valign = "center";

          shadow_passes = 2;
        }
      ];

    };
  };
}
