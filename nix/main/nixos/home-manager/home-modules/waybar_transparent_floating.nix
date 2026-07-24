{ pkgs, config, ... }:
{
  programs.waybar = {

    enable = true;

    settings = {
      mainBar = {

        layer = "top";
        output = "HDMI-A-1";
        position = "top";
        height = 16;

        margin-top = 10;
        margin-left = 10;
        margin-right = 10;

        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "custom/iconIdentity" "custom/identity" "custom/iconIdentity"];
        modules-right = [ "custom/clockIcon" "clock" ];

        "hyprland/workspaces" = {
          all-outputs = true;
          format = "{id}";
          all_outputs = true;
          format-icons = {
            active = "";
            default = "";
            empty = "";
          };
          "sort-by-number" = true;
          persistent-workspaces = {
            "*" = [ 1 2 3 ];
          };

        };

        "custom/identity" = {
          format = "Watashi no namae wa muhaku, oboeteoke";
          tooltip = false;
        };

        "custom/iconIdentity" = {
          format = "";
          on-click = "wlogout";
          tooltip = false;
        };

        "custom/clockIcon" = {
          format = "󱦟";
        };

        "clock" = {
          timezone = "America/Argentina/Cordoba";
          format = " {:%I:%M  %A-%d, %B-%m} ";
          tooltip-format = "{calendar}";
          calendar = {
            mode = "month";
          };

        };

      };
    };

    style = ''
      * {
        font-family: InconsolataLGC Nerd Font;
        font-size: 17px;
        font-weight: bold;
      }

      window#waybar {
        background-color: rgba(0,0,0,0.8);
        border-bottom: 0px solid #ffffff;
        background: transparent;
      }


      #workspaces {
        background-color: #404040;
        margin: 5px 5px 5px 5px;
        padding: 4px 1px;
        opacity: 1;
        border-radius: 9px;
        color: #75fdff;
      }

      #workspaces button {
        padding: 0px 10px;
        margin: 0px 3px;
        border-radius: 9px;
        color: #0091ff;
        background-color: #fefefe;
        transition: all 0.3s ease-in-out;
      }

      #workspaces button.active {
        color: #75fdff;
        background-color: #175d96;
        border-radius: 9px;
        min-width: 35px;
        background-size: 500% 500%;
        transition: 0.3s ease-in-out;
      }

      #custom-identity {
        background-color: #404040;
        color: #fefefe;
        margin-top: 5px;
        margin-bottom: 5px;
        margin-left: 5px;
        margin-right: 5px;
        padding-left: 5px;
        padding-right: 5px;
        opacity: 1;
        border-radius: 50px;
      }
      
      #custom-iconIdentity {
        background-color: #404040;
        color: #75fdff;
        margin-top: 5px;
        margin-bottom: 5px;
        margin-left: 0px;
        margin-right: 0px;
        padding-left: 5px;
        padding-right: 11px;
        opacity: 1;
        border-radius: 4px;
      }

      #custom-clockIcon {
        color: #0091ff;
        background-color: #404040;
        padding-left: 10px;
        padding-right: 10px;
        margin-top: 5px;
        margin-bottom: 5px;
        opacity: 1;
        border-radius: 4px;
      }

      #clock {
        color: #fefefe;
        background-color: #404040;
        transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
        margin: 5px 5px 5px 5px;
        padding: 4px 1px;
        opacity: 1;
        border-radius: 4px;
      }
    '';
  };
}
