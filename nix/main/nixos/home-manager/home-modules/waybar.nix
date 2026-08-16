{ pkgs, config, ... }:
{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        output = "HDMI-A-1";
        position = "top";
        
        margin-top = 0;
        margin-right = 0;
        margin-left = 0;

        modules-left = [
                         "custom/spacer"
                         "custom/left_moon"
                         "disk"
                         "memory"
                         "cpu"
                         "custom/right_moon"
                         "custom/left_moon"  
                         "network" 
                         "custom/right_moon"
                         "custom/left_moon"  
                         "custom/wallchange" 
                         "custom/right_moon"
                       ];
        modules-center = [ 
                           "custom/left_moon"
                           "custom/identity"
                           "custom/right_moon"
                           "custom/left_moon" 
                           "hyprland/workspaces"
                           "custom/right_moon"
                           "custom/left_moon"
                           "custom/launcher"
                           "custom/right_moon"
                         ];
        modules-right = [ 
                          "custom/left_moon"  
                          "custom/weather" 
                          "custom/right_moon"
                          "custom/left_moon"  
                          "pulseaudio#source" 
                          "custom/right_moon"
                          "custom/left_moon"  
                          "clock"
                          "custom/right_moon"
                          "custom/spacer"
                        ];

        "hyprland/workspaces" = {
          all_outputs = true;
          format = "{icon}";
          tooltip = false;
          active_only = false;
          show_special = false;
          on_click = "activtate";
          format-icons = {
            "1" = "一";
            "2" = "二";
            "3" = "三";
            "4" = "四";
            "5" = "五";
            "6" = "六";
            "7" = "七";
            "8" = "八";
            "9" = "九";
            "10" = "十";
          };
          persistent-workspaces = {
            "*" = [ 1 2 3 4 ];
          };
        };

        "hyprland/window" = {
          format = "{class}";
          icon = false;
          max_lenght = 50;
          separate-outputs = true;
          tooltip = false;
        };

        "pulseaudio#source" = {
          format = "{icon} {volume}%";
          format-muted = "󰝟";
          tooltip = true;
          tooltip-format = "Volume : {volume}%.\nleft click: volume up.\nright click: Volume down.\ncentral click: Volume control.";
          format-icons = {
            headphone = "";
            default = [
              ""
              ""
              ""
            ];
          };
          scroll-step = 5;
          on-click = "amixer set Master 2%+";
          on-click-middle = "pavucontrol";
          on-click-right = "amixer set Master 2%-";
        };

        "custom/identity" = {
          format = "<span size='x-large'>󰌪</span>";
          on-click = "wlogout -b 1 -c 20 -r 20 -L 1700 -T 325 -B 325";
          tooltip = true;
          tooltip-format = "Rest as you see fit...Please";
        };

        "custom/launcher" = {
          format = "<span size='x-large'> </span>";
          tooltip = true;
          tooltip-format = "Explore the sky of posiblities";
          on-click = "rofi -show drun";
        };

        "custom/left_moon" = {
          format = "<span size='x-large'>󰽥</span>";
          tooltip = false;
        };

        "custom/right_moon" = {
          format = "<span size='x-large'>󰃜</span>";
          tooltip = false;
        };

        "custom/spacer" = {
          format = " ";
          tooltip = false;
        };

        "custom/wallchange" = {
          format = "<span size='x-large'></span>";
          exec = "echo ; echo 󰆊 switch wallpaper";
          on-click = "swww img --transition-type grow --transition-pos 0.071,0.988 --transition-step 255 --transition-fps 60 /home/kumoren/images/blueAppreciation.jpg";
          on-click-middle = "swww img --transition-type grow --transition-pos 0.071,0.988 --transition-step 255 --transition-fps 60 /home/kumoren/images/siren.png";
          on-click-right = "swww img --transition-type grow --transition-pos 0.071,0.988 --transition-step 255 --transition-fps 60 /home/kumoren/images/blueDragons.jpg";
          on-scroll-up = "swww img --transition-type grow --transition-pos 0.071,0.988 --transition-step 255 --transition-fps 60 /home/kumoren/images/Glint.jpg";
          on-scroll-down = "swww img --transition-type grow --transition-pos 0.071,0.988 --transition-step 255 --transition-fps 60 /home/kumoren/images/CyndiWave.png";
        };

        "clock" = {
          timezone = "America/Argentina/Cordoba";
          format = "󰃰 {:%m-%d-%H:%M}";
          format_alt = "{:%A, %B %d, %Y (%R)} 󰃰 ";
          tooltip-format = "<tt><small><span size='large'>{calendar}</span></small></tt>";
          calendar = {
            mode = "month";
            mode_mon_col = 4;
            weeks-pos = "right";
            first_day_of_week = 1;
            on_scroll = 1;
            on_click_right = "mode";
            format = {
              months = "<span color='#4c566a'><b>{}</b></span>";
              days = "<span color='#e3f4ff'><b>{}</b></span>";
              weeks = "<span color='#5a8fb8'><b>W{}</b></span>";
              weekdays = "<span color='#9cdbd7'><b>{}</b></span>";
              today = "<span color='#c8a5cf'><b><u>{}</u></b></span>";
            };
          };
        };

        "memory" = {
          format = " {}% ";
          tooltip = true;
          tooltip-format = "RAM: Used {used:0.1f}G / Total {total:0.1f}G";
          interval = 4;
        };

        "disk" = {
          interval = 30;
          unit = "GB";
          format = "󱘾 {percentage_used:2}% ";
          path = "/";
          tooltip = true;
          tooltip-format = "Root: Used {specific_used:0.2f}G / Free: {specific_free:0.2f}G";
        };

        "cpu" = {
          interval = 5;
          format = " {usage:2}%";
        };

        "temperature" = { #Doesn' work
          thermal-zone = 2;
          critical-threshold = 80;
          hwmon-path = "/sys/class/hwmon/hwmon2/temp_input";
          format-critical = "{icon} {temperature}";
          format = "{icon} {temperature}°C";
          format-icons = [ "" "" ""];
        };

        "custom/weather" = {
          format = "{}°";
          tooltip = true;
          interval = 600;
          exec = "wttrbar --nerd --location Rio_Cuarto";
          return-type = "json";
        };

        "network" = {
          tooltip = true;
          format-wifi = "{icon}";
          format-icons = [ "󰤟" "󰤢" "󰤥" ];
          format-ethernet = "<span size='x-large'> </span>";
          tooltip-format = "Network: <big><b>{essid}</b></big>\nSignal strength: <b>{signaldBm}dBm ({signalStrength}%)</b>\nFrequency: <b>{frequency}MHz</b>\nInterface: <b>{ifname}</b>\nIP: <b>{ipaddr}/{cidr}</b>\nGateway: <b>{gwaddr}</b>\nNetmask: <b>{netmask}</b>";
          format-linked = "󰈀 {ifname} (No IP)";
          format-disconnected = " ";
          tooltip-format-disconnected = "Disconnected";
          interval = 5;
        };
      };
    };

    style = ''
      * {
        font-family: InconsolataLGC Nerd Font;
        font-size: 15px;
      }

      window#waybar {
        background-color: #2e3440;
        color: #e3f4ff;
      }

      tooltip {
        background-color: #4c566a;
        border: 3px solid #eec6f5;
        border-radius: 2px;
      }

      tooltip label {
        color: #def9ff;
      }

      menu {
        background-color: #4c566a;
        border: 1px solid #89abc4;
        border-radius: 8px;
        padding: 4px;
      }

      menu menuitem {
        padding: 6px 10px;
        border-radius: 6px;
        color: #a2d9db;
      }

      menu menuitem:hover {
        background-color: #4c566a;
        color: #a2d9db;
      }

      #workspaces {
        color: #d3f4ff;
      }

      #workspaces button {
        color: #9ad4fb;
        transition: all 0.2s ease-in-out;
      }

      #workspaces button.empty {
        color: #5a8fb8;
      }

      #workspaces button.active {
        color: #c7faff;
        font-weight: bold;
      }

      #workspaces button.urgent {
        background-color: #4c566a;
        color: #def9ff;
      }

      #clock {
        color: #5a8fb8;
        font-weight: bold;
      }

      #custom-launcher,
      #custom-identity {
        background-color: #2e3440;
        color: #c7faff;
      }

      #custom-left_moon,
      #custom-right_moon {
        background-color: #2e3440;
        color: #e3f4ff;
      }

      #memory,
      #cpu,
      #disk {
        color: #5a8fb8;
        background-color: #2e3440;
      }

      #custom-weather.sunny {
        background-color: #2e3440;
        color: #eec6f5;
      }

      #custom-weather.cloudy {
        background-color: #2e3440;
        color: #9ad4fb;
      }

      #network {
        background-color: #2e3440;
        color: #eec6f5;
        padding-left: 4px;
      }

      #pulseaudio {
        background-color: #2e3440;
        color: #9ad4fb;
      }

      #pulseaudio.muted {
        background-color: #2e3440;
        color: #386fcd;
      }

      #custom-wallchange {
        background-color: #2e3440;
        color: #9ad4fb;
      }

      #custom-spacer {
        background-color: #2e3440;
      }

    '';
  };
}
