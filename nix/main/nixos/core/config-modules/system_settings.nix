{ pkgs, config, lib, ... }:
{
  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      auto-optimise-store = true;
    };

    optimise.automatic = true;

  };

  environment.variables = {
    NIXOS_OZONE_WL = "1";
    XDG_CACHE_HOME = "$HOME/.cache";
    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_DATA_HOME = "$HOME/.local/share";
    XDG_BIN_HOME = "$HOME/.local/bin";
    QT_QPA_PLATFORM = "wayland";
    QT_QPA_PLATORMTHEME = "qt6ct";
  };

  environment.pathsToLink = [ "/share/icons" "/share/pixmaps" ];

  nixpkgs.config.allowUnfree = true;

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  i18n.defaultLocale = "es_AR.UTF-8";
}
