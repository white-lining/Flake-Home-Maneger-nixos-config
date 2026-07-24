{ pkgs, config, ... }:
{
  plugins.cursorline = {
    enable = true;

    settings = {
      cursorline = {
        enable = false;
        number = false;
      };

      cursorword = {
        enable = true;

        hl = {
          underline = true;
        };
        min_lenght = 2;
      };
    };
  };
}
