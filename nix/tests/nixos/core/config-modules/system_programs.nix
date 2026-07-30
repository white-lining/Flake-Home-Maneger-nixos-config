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

    hyprland = {
      enable = true;
      xwayland.enable = true;
      package = pkgs-unstable.hyprland;
    };

    gamemode.enable = true;

    fish.enable = true;
    zsh.enable = true;

    steam.enable = true;

    java = {
      enable = true;
      package = pkgs.jdk;
    };
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs-unstable.xdg-desktop-portal-gtk
      pkgs-unstable.xdg-desktop-portal-hyprland
      pkgs-unstable.xdg-desktop-portal
    ];

    config = {
      common.default = [ "gtk" ];
      hyprland.default = [ "hyprland" "gtk" ];
    };
  };

}
