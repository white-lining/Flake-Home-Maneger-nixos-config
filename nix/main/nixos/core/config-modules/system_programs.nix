{ pkgs, pkgs-unstable, config, lib, ... }:
{
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  security.rtkit.enable = true;
  security.pam.services.hyprlock = {};

  networking = {
    hostName = "nixlotus";
    networkmanager.enable = true;
  };

  time.timeZone = "America/Argentina/Cordoba";

  users.defaultUserShell = pkgs.zsh;
  users.users.kumoren = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
  };

  programs = {

    firefox.enable = true;

    dconf = {
      enable = true;
      profiles.user.databases = [ {
        settings."org/gnome/desktop/interface" = {
          icon-theme = "adwaita";
          gtk-theme = "adwaita";
        };
      }];
    };

    hyprland = {
      enable = true;
      xwayland.enable = true;
    };

    gamemode.enable = true;

    fish.enable = true;
    zsh.enable = true;

    steam.enable = true;

    java = {
      enable = true;
      package = pkgs.jdk;
    };

    gdk-pixbuf.modulePackages = [ pkgs.librsvg ];
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal
    ];

    config = {
      common.default = [ "gtk" ];
      hyprland.default = [ "hyprland" "gtk" ];
    };
  };

}
