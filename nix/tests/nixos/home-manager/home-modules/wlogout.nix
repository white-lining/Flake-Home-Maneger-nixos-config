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
        action = "loginctl lock-session";
        text = "lock-l";
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
      }
      window {
        background-color: rgba(41, 48, 54, 0.5);
        background-image: url("/home/kumoren/images/dark-forest.jpg");
      }

      button {
        background-color: rgba(38, 46, 54, 1);
        background-image: none;
        color: rgba(117, 253, 255, 1);
        border: 3px solid rgba(21, 117, 191, 1);
        border-radius: 2px;
        margin: 3px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
      }
      
    '';

  };
}
