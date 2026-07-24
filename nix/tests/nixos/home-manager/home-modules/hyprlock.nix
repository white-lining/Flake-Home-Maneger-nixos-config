{ pkgs, config, ... }:
{
  programs.hyprlock = {
    enable = true;

    settings = {

      background = [
        {
          path = "/home/kumoren/images/nord_valley.png";
          blur_passes = 2;
          blur_size = 2;
        }
      ];

      input-field = [
        {
          monitor = "";
          size = "300, 80";
          position = "0, 0";
          dots_center = true;
          fade_on_empty = false;
          outline_thickness = 2;

          # Color of the inner box
          inner_color = "rgba(242, 250, 255, 0.6)";
          # Color of the font
          font_color = "rgba(41, 48, 54, 0.9)";
          # Color of the border
          outer_color = "rgba(117, 253, 255, 1.0)";
          # Color for when failing the authorization
          fail_color = "rgba(21, 117, 191, 1.0)";

          rounding = 2;

          font_family = "InconsolataLGC Nerd Font";
          placeholder_text = "Ware wa...";
          hide_input = false;

          halign = "center";
          valign = "center";

          shadow_passes = 2;
        }
      ];

    };
  };
}
