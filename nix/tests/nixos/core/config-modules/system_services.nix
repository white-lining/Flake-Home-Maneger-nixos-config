{ pkgs, config, ... }:
{
  services = {
    dbus.enable = true;

    udisks2.enable = true;

    gvfs.enable = true;
    tumbler.enable = true;

    xserver = {
      xkb.layout = "latam";
    };

    greetd = {
      enable = true;
      package = pkgs.greetd.tuigreet;
      restart = true;

      setting = {
        default_session = { 
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet -t -r --remember-session";
          user = "greeter";
        };
      };
    };

    # displayManager = {
    #   defaultSession = "hyprland";
    #   sddm = {
    #     enable = true;
    #     wayland.enable = true;
    #     package = pkgs.kdePackages.sddm;
    #     theme = "sddm-astronaut-theme";
    #     extraPackages = [ pkgs.sddm-astronaut ];
    #   };
    # };

    # displayManager.ly = {
    #   enable = true;
    #   settings = {
    #     bigclock = true;
    #   };
    # };

    pipewire = {
      enable = true;
      pulse.enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
    };

    power-profiles-daemon.enable = true;

    flatpak.enable = true;

  };

  console.useXkbConfig = true;
}
