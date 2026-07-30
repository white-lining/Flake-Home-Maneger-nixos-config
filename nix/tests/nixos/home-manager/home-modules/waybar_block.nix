{ pkgs, config, ... }:
{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        output = "HDMI-A-1";
        position = "top";
        # height = 32;

        margin-top = 0;
        margin-left = 0;
        margin-right = 0;

        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "custom/identity" ];
        modules-right = [ "clock#1" ];

        "hyprland/workspaces" = {
          all_outputs = true;
          format = "{icon}";
          format-icons = {
            active = "󰣏";
            default = "󱀝";
          };
          persistent-workspaces = {
            "*" = [ 1 2 3 ];
          };
        };

        "custom/identity" = {
          format = "";
          tooltip = false;
          on-click = "w-logout";
        };

        "clock#1" = {
          timezone = "America/Argentina/Cordoba";
          format = " {:%a} ";
          tooltip = false;
        };

      };
    };

    style = ''
      * {
        font-family: InconsolataLGC Nerd Font;
        font-weight: bold;
      }

      window#waybar {
        background: #e3f4ff;
        color: #1c2b36;
        border-radius: 0px;
      }

      #workspaces {
        background-color: #1c2b36;
        color: #e3f4ff;
        margin-top: 0px;
        margin-left: 0px;
        margin-right: 0px;
        margin-bottom: 0px;
        font-size: 10px;
      }

      #workspaces button{
        background-color: #1c2b36;
        color: #e3f4ff;
        font-size: 10px;
      }

      #workspaces button.active{
        background-color: #1c2b36;
        color: #8ffdff;
        font-size: 10px;
      }

      #custom-identity {
        background: #1c2b36;
        color: #8ffdff;
      }

      #clock.1{
        font-size: 10px;
        background: #1c2b36;
        color: #e3f4ff;
      }
    '';
  };
}

