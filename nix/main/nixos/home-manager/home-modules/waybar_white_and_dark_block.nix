{ pkgs, config, ... }:
{
  programs.waybar = {

    enable = true;

    settings = {
      mainBar = {

        layer = "top";
        output = "HDMI-A-1";
        position = "top";
        height = 32;

        margin-top = 0;
        margin-laft = 0;
        margin-right = 0;

        modules-left = [ "custom/icon" "custom/logout" ];
        modules-center = [ "hyprland/workspaces"  ];
        modules-right = [ "custom/clockIcon" "clock" ];

        "hyprland/workspaces" = {
          all-outputs = true;
          format = "{icon}";
          format-icons = {
            active = "";
            default = "";
            empty = "";
          };
          persistent-workspaces = {
            "*" = [ 1 2 3 4 5 6 ];
          };

        };

        "custom/icon" = {
          format = "";
          on-click = "fuzzel";
          tooltip = false;
        };

        "custom/logout" = {
          format = "󱙳";
          on-click = "wlogout";
          tooltip = false;
        };

        "custom/pomodoro" = {
          format = "{}";
          return-type = "json";
          exec = "waybar-module-pomodoro --no-work-icons";
          on-click = "waybar-module-pomodoro toggle";
          on-click-right = "waybar-module-pomodoro reset";
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
        font-size: 18px;
        font-weight: bold;
      }

      window#waybar {
        background: #cbcee0;
        color: #171f2b;
      }

      #custom-icon {
        background-color: #171f2b;
        color: #a9e8e2;
        padding-left: 10px;
        padding-right: 15px;
        border: none;
      }

      #custom-logout {
        background-color: #171f2b;
        color: #e8588d;
        padding-left: 10px;
        padding-right: 20px;
      }

      #workspaces {
        background-color: #171f2b;
      }

      #workspaces button {
        color: #cbcee0;
        background-color: transparent;
        transition: all 0.2s ease-in-out;
        border-bottom: 3px solid #a9e8e2;
      }

      #workspaces button.active {
        color: #a9e8e2;
        border-bottom: 2px solid #e8588d;
        background-color: #171f2b;
      }

      #custom-clockIcon {
        color: #a9e8e2;
        background-color: #171f2b;
        padding-left: 15px;
      }

      #clock {
        background-color: #171f2b;
        color: #a9e8e2;
        transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
      }
    '';
  };
}
