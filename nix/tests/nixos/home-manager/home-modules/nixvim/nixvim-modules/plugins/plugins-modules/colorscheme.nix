{ pkgs, config, ... }:
{

  colorscheme = "nord";

  colorschemes.nord = { 
    enable = true;

    settings = {
      disable_background = false;
      italic = true;
      underline = true;
    };
  };
  plugins.lualine.enable = true;

}
