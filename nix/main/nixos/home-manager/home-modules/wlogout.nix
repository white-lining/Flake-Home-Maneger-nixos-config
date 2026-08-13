{ pkgs, config, ... }:
{
  programs.wlogout = {
    enable = true;

    layout = [

      # Shutdown function
      {
        label = "shutdown";
        action = "systemctl poweroff";
        text = "Shutdown-s";
        keybind = "s";
      }

      # Session locking
      {
        label = "session-lock";
        action = "hyprlock";
        text = "Lock-l";
        keybind = "l";
      }

      # Hibernation
      {
        label = "hibernate";
        action = "systemctl hibernate";
        text = "Hibernate-h";
        keybind = "h";
      }

      # Suspension
      {
        label = "suspend";
        action = "systemctl suspend";
        text = "Suspend-u";
        keybind = "u";
      }

      # Reboot
      {
        label = "reboot";
        action = "systemctl reboot";
        text = "Reboot-r";
        keybind = "r";
      }

      # Logout 
      {
        label = "logout";
        action = "loginctl terminate-user $USER";
        text = "Logout-o";
        keybind = "o";
      }
    ];

    style = ''
      * {
        font-family: "InconsolataLGC Nerd Font";
        font-size: 16px;
        font-weight: bold;
        transition: 200ms ease-in;
        background-image: none;
        box-shadow: none;
      }
      window {
        background-color: rgba(46, 52, 64, 0.5);
      }

      button {
        background-color: rgba(76, 86, 106, 0.6);
        color: rgba(227, 244, 255, 1);
        border: 3px solid rgba(238, 198, 245, 1);
        border-radius: 1px;
        margin: 2px;
      }

      button:focus, button:active, button:hover {
        outline-style: none;
        background-color: #2e3440;
      }
      
    '';

  };
}
