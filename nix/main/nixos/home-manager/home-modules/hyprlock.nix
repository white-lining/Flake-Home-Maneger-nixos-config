{ pkgs, config, ... }:
{
  programs.hyprlock = {
    enable = true;

    settings = {

      background = [
        {
          path = "/home/kumoren/projects/nix/HakurenNixos/resources/siren.png";
          blur_passes = 2;
          blur_size = 1;
        }
      ];

      general = {
        no_fade_in = false;
        disable_loading_bar = false;
      };

      image = {
        path = "/home/kumoren/projects/nix/HakurenNixos/resources/Mountain.jpg";
        border_size = 3;
        border_color = "rgba(238, 198, 245, 1)";
        size = 160;
        rounding = -1;
        halign = "left";
        valign = "center";
        position = "20,20";
      };

      label = [
        {
          text = "cmd[update:1000] echo -e \"$(LC_TIME=es_AR.UTF-8 date +\"%A, %B %d\")\"";
          color = "rgba(46, 52, 64, 1)";
          font_size = 15;
          font_family = "InconsolataLGC Nerd Font";
          position = "-70,-80";
          halign = "right";
          valign = "center";
        }

        {
          text = "cmd[update:1000] echo \"<span>$(date +\"%H:%M\")</span>\"";
          color = "rgba(46, 52, 64, 1)";
          font_family = "InconsolataLGC Nerd Font";
          font_size = 65;
          position = "-50,0";
          halign = "right";
          valign = "center";
        }
        # {
        #   text = "Welcome back, $USER";
        #   color = "rgba(163, 241, 253, 1)";
        #   outline_thickness = 2;
        #   dots_size = 0.2;
        #   dots_spacing = 0.2;
        #   dots_center = true;
        #   font_size = 16;
        #   font_family = "InconsolataLGC Nerd Font";
        #   position = "10,80";
        #   halign = "left";
        #   valign = "center";
        # }
      ];

      input-field = [
        {
          monitor = "";
          size = "250, 50";
          dots_center = true;
          dots_size = 0.2;
          dots_spacing = 0.2;
          fade_on_empty = false;
          outline_thickness = 2;

          # Color of the inner box
          inner_color = "rgba(46, 52, 64, 0.9)";
          # Color of the font
          font_color = "rgba(199, 250, 255, 0.9)";
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
          position = "20,-100";

          shadow_passes = 2;
        }
      ];

    };
  };
}
