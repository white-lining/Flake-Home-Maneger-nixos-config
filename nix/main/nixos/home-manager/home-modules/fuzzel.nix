{ pkgs, config, ... }:
{
  programs.fuzzel = {
    enable = true;
    
    settings = {

      main = {

        dpi-aware = "no";
        font = "InconsolataLGC Nerd Font:size=18";
        prompt = "";
        lines = 5;
        width = 35;
        show-actions = "yes";
        icons-enabled = "yes";
        fields = "filename,name,keywords,comment,categories,generic";
        layer = "overlay";
        exit-on-keyboard-focus-loss = "yes";
        horizontal-pad = 20;
        vertical-pad = 15;
        icon-theme = "adwaita";
      };

      colors = {

        background = "2e3440ff";
        text = "e3f4ffff";
        match = "c8a5cfff";
        selection = "4c566aff";
        selection-text = "a2d9dbff";
        selection-match = "5a8fb8ff";
        border = "5a8fb8ff";
        prompt = "90cfd1ff";

      };

      border = {

        width = 4;
        radius = 1;

      };
    };
  };
}
