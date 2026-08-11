{ pkgs, ... }:
{

  stylix.enable = true;

  #stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/eighties.yaml";
  stylix.base16Scheme = {
    base00 = "#2e3440"; 
    base01 = "#3b4252"; 
    base02 = "#434c5e"; 
    base03 = "#4c566a"; 
    base04 = "#e3f4ff"; 
    base05 = "#e3f4ff"; 
    base06 = "#e3f4ff"; 
    base07 = "#a2d9db"; 
    base08 = "#89abc4"; 
    base09 = "#4683a3";
    base0A = "#c8a5cf"; 
    base0B = "#9cdbd7";
    base0C = "#5a8fb8"; 
    base0D = "#89b4cc";
    base0E = "#c8a5cf";
    base0F = "#90cfd1";
  };

  # stylix.targets.hyprlock.enable = false;
  stylix.fonts = {
    monospace = {
      package = pkgs.nerd-fonts.inconsolata-lgc;
      name = "InconsolataLGC Nerd Font";
    };
  };

  stylix.fonts.sizes = {
    applications = 12;
    terminal = 13;
    desktop = 12;
    popups = 13;
  };

  stylix.polarity = "dark";

  stylix.image = /home/kumoren/images/whiteShade.png;
}
