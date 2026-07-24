{ pkgs, config, ... }:
{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {

        layer = "top";
        output = "HDMI-A-1";
        position = "top";
        # height = 38;

        margin-top = 5;
        margin-left = 8;
        margin-right = 8;

        modules-left = [ "hyprland/workspaces"
                         "custom/rightArrowFull"
                         "custom/rightArrowHollow"
                         "disk"
                         "custom/rightArrowFull"];

        modules-center = [ "custom/leftArrowFull"
                           "memory"
                           "custom/leftArrowHollow"
                           "custom/leftArrowFull"
                           "custom/identity"
                           "custom/rightArrowFull"
                           "custom/rightArrowHollow"
                           "cpu"
                           "custom/rightArrowFull"];

        modules-right = [ "custom/leftArrowFull"
                          "clock#1"
                          "custom/leftArrowHollow"
                          "custom/leftArrowFull"
                          "clock#2"
                          "custom/leftArrowHollow"
                          "custom/leftArrowFull"
                          "clock#3" ];

        "hyprland/workspaces" = {
          all-outputs = true;
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
          format = "<span size='xx-large'></span>";
          tooltip = false;
        };

        "custom/leftArrowFull" = {
          format = "<span size='xx-large'></span>";
          tooltop = false;

        };
        "custom/rightArrowFull" = {
          format = "<span size='xx-large'></span>";
          tooltop = false;
        };

        "custom/rightArrowHollow" = {
          format = "<span size='xx-large'></span>";
          tooltop = false;
        };
        "custom/leftArrowHollow" = {
          format = "<span size='xx-large'></span>";
          tooltop = false;
        };

        "cpu" = {
          interval = 5;
          format = "<span size='xx-large'>󱎂</span> {usage:2}%";
        };
        "memory" = {
          interval = 5;
          format = "<span size='xx-large'>󱩅</span> {}%";
        };
        "disk" = {
          interval = 5;
          format = "<span size='xx-large'>󱠆</span> {percentage_used:2}%";
          path = "/";
        };

        "clock#1" = {
          format = " {:%a} ";
          tooltip = false;
        };
        "clock#2" = {
          timezone = "America/Argentina/Cordoba";
          format = " {:%H:%M} ";
          tooltip = false;
        };
        "clock#3" = {
          format = " {:%m-%d} ";
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
        background: #ccdfeb;
        color: #1c2b36;
        border-radius: 2px;
      }

      #workspaces {
        background-color: #1c2b36;
        color: #ccdfeb;
        margin-top: 5px;
        margin-bottom: 5px;
        font-size: 15px;
      }

      #workspaces button {
        background-color: #1c2b36;
        color: #ccdfeb;
        font-size: 15px;
      }

      #workspaces button.active {
        background-color: #1c2b36;
        color: #8ffdff;
        font-size: 15px;
      }

      #custom-identity {
        background: #1c2b36;
        color: #75fdff;
        padding-left: 5px;
        padding-right: 10px;
        min-width: 30px;
        margin-top: 5px;
        margin-bottom: 5px;
      }

      #custom-rightArrowFull,
      #custom-leftArrowFull {
        color: #1c2b36;
        background: #ccdfeb;
        margin-left: 0px;
        margin-right: 0px;
        margin-top: 5px;
        margin-bottom: 5px;
      }
      #custom-rightArrowHollow,
      #custom-leftArrowHollow {
        color: #1c2b36;
        background: #ccdfeb;
        margin-left: 0px;
        margin-right: 0px;
        margin-top: 5px;
        margin-bottom: 5px;
      }

      #memory {
        color: #1575bf;
        background: #1c2b36;
        margin-left: 0px;
        margin-right: 0px;
        margin-top: 5px;
        margin-bottom: 5px;
      }
      #cpu {
        color: #1575bf;
        background: #1c2b36;
        margin-left: 0px;
        margin-right: 0px;
        margin-top: 5px;
        margin-bottom: 5px;
      }
      #disk {
        color: #1575bf;
        background: #1c2b36;
        margin-left: 0px;
        margin-right: 0px;
        margin-top: 5px;
        margin-bottom: 5px;
      }

      #clock.1,
      #clock.2,
      #clock.3 {
        font-size: 15px;
        margin-top: 5px;
        margin-bottom: 5px;
        background: #1c2b36;
        color: #ccdfeb;
      }
    '';
  };
}
