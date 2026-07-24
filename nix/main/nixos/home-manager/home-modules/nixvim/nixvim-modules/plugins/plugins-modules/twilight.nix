{ pkgs, config, ... }:
{
  plugins = {

    twilight = {

      enable = true;
      settings = {
        context = 5;
        dimming = {
          alpha = 0.4;
          inactive = false;
        };
        expand = [
          "method"
          "table"
          "if_statement"
        ];
        treesitter = true;

      };

    };

    zen-mode.enable = true;
  };
}
