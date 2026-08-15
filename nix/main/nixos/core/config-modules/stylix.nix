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
    base07 = "#c7faff"; #
    base08 = "#9ad4fb"; 
    base09 = "#386fcd";
    base0A = "#c8a5cf"; 
    base0B = "#a3f1fd";
    base0C = "#5a8fb8"; 
    base0D = "#def9ff";
    base0E = "#eec6f5";
    base0F = "#c8f8f7";
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

  #stylix.image = /home/kumoren/images/whiteShade.png;
}
