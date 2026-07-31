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
        margin-left = 0;
        margin-right = 0;

        modules-left = [ 
                         "hyprland/workspaces"
                         "custom/rightArrowFull" 
                         "custom/rightArrowHollow"
                         "disk"
                         "custom/rightArrowFull"
                       ];
        modules-center = [
                           "custom/leftArrowFull"
                           "memory"
                           "custom/leftArrowHollow"
                           "custom/leftArrowFull"
                           "custom/identity"
                           "custom/rightArrowFull"
                           "custom/rightArrowHollow"
                           "cpu"
                           "custom/rightArrowFull"
                         ];
        modules-right = [
                          "custom/leftArrowFull"
                          "clock#1"
                          "custom/leftArrowHollow"
                          "custom/leftArrowFull"
                          "clock#2"
                          "custom/leftArrowHollow"
                          "custom/leftArrowFull"
                          "clock#3"
                        ];

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
          format = "<span size='xx-large'>  </span>";
          tooltip = false;
          on-click = "wlogout";
          expand = true;
        };

        "custom/leftArrowFull" = {
          format = "<span size='xx-large'></span>";
          tooltip = false;
        };
        "custom/rightArrowFull" = {
          format = "<span size='xx-large'></span>";
          tooltip = false;
        };
        "custom/leftArrowHollow" = {
          format = "<span size='xx-large'></span>";
          tooltip = false;
        };
        "custom/rightArrowHollow" = {
          format = "<span size='xx-large'></span>";
          tooltip = false;
        };

        "cpu" = {
          interval = 5;
          format = "<span size='xx-large'>󰯙</span>{usage:2}%";
        };

        "memory" = {
          interval = 5;
          format = "<span size='xx-large'>󱩅</span> {}%";
        };

        "disk" = {
          interval = 20;
          format = "<span size='xx-large'>󱠆 </span>{percentage_used:2}%";
        };

        "clock#1" = {
          timezone = "America/Argentina/Cordoba";
          format = " {:%a} ";
          tooltip = false;
        };

        "clock#2" = {
          timezone = "America/Argentina/Cordoba";
          format = " {:%H:%M} ";
          tooltip = false;
        };

        "clock#3" = {
          timezone = "America/Argentina/Cordoba";
          format = " {:%m-%d} ";
          tooltip = false;
        };

      };
    };

    style = ''
      * {
        font-family: InconsolataLGC Nerd Font;
        font-weight: bold;
        font-size: 15px;
      }

      window#waybar {
        background: #e3f4ff;
        color: #1c2b36;
      }

      #workspaces {
        background-color: #1c2b36;
        color: #e3f4ff;
        margin-top: 0px;
        margin-left: 0px;
        margin-right: 0px;
        margin-bottom: 0px;
      }

      #workspaces button{
        background-color: #1c2b36;
        color: #e3f4ff;
      }

      #workspaces button.active{
        background-color: #1c2b36;
        color: #8ffdff;
      }

      #custom-identity {
        background: #1c2b36;
        color: #8ffdff;
        padding-left: 5px;
        padding-right: 10px;
      }

      #custom-rightArrowFull,
      #custom-rightArrowHollow,
      #custom-leftArrowFull,
      #custom-leftArrowHollow{
        color: #1c2b36;
        background: #e3f4ff;
      }

      #memory,
      #cpu,
      #disk {
        color: #007fe0;
        background: #1c2b36;
      }

      #clock.1,
      #clock.2,
      #clock.3{
        background: #1c2b36;
        color: #e3f4ff;
      }
    '';
  };
}

