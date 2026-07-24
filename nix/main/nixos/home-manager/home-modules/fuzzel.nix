{ pkgs, config, ... }:
{
  programs.fuzzel = {
    enable = true;
    
    settings = {

      main = {

        dpi-aware = "no";
        font = "InconsolataLGC Nerd Font:size=16";
        prompt = "";
        lines = 10;
        width = 35;
        show-actions = "yes";
        icons-enabled = "yes";
        fields = "filename,name,keywords,comment,categories,generic";
        layer = "overlay";
        exit-on-keyboard-focus-loss = "yes";
        horizontal-pad = 20;
        vertical-pad = 15;

      };

      colors = {

        background = "cbcee0ff";
        text = "171f2bff";
        match = "e8588dff";
        selection = "171f2bff";
        selection-text = "cbcee0ff";
        selection-match = "a9e8e2ff";
        border = "a9e8e2ff";
        prompt = "e8588dff";

      };

      border = {

        width = 2;
        radius = 2;

      };
    };
  };
}
