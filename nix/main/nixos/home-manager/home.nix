{ pkgs, pkgs-unstable, config, lib, ... }:
{
  home = {
    username = "kumoren";
    homeDirectory = "/home/kumoren";
    stateVersion = "25.11";
    pointerCursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
      hyprcursor.enable = true;
      gtk.enable = true;
    };

  };
  services.swww.enable = true;

  gtk = {
    enable = true;
    iconTheme = {
      name = "adwaita-icon-theme";
      package = pkgs.adwaita-icon-theme;
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "qtct";
    style = {
      name = "kvantum";
    };
  };

  xdg.portal = {
    enable = true;

    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-hyprland
    ];

    config = {
      common.default = [ "hyprland" "gtk" ];
      hyprland = {
        "org.freedesktop.impl.FileChooser" = [ "gtk" ];
        "org.freedesktop.impl.AppChooser" = [ "gtk" ];
        "org.freedesktop.impl.OpenURI" = [ "gtk" ];
      };
    };
  };

  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "inode/directory" = [ "thunar.desktop" ];
    };
  };

  imports = [
    ./home-modules/home_packages.nix #
    ./home-modules/hyprland_whole.nix # 
    ./home-modules/nixvim/nixvim.nix
    ./home-modules/hyprlock.nix #
    #   ./home-modules/hypridle.nix #
    ./home-modules/wlogout.nix #
    ./home-modules/terminal/alacritty.nix #
    ./home-modules/helix.nix
    ./home-modules/bash.nix #
    ./home-modules/git.nix #
    ./home-modules/fuzzel.nix #
    #./home-modules/waybar_block.nix
    ./home-modules/waybar.nix #
    ./home-modules/yazi.nix #
    ./home-modules/music.nix #
    ./home-modules/zsh.nix #
    ./home-modules/terminal/starship.nix #
    ./home-modules/terminal/tmux.nix #
    ./home-modules/terminal/ghostty.nix #
    ./home-modules/rofi/rofi.nix
  ];

  stylix.targets.hyprlock.enable = false;
  stylix.targets.fuzzel.enable = false;
  stylix.targets.waybar.enable = false;
}
