{ pkgs, config, ... }:
{
  programs.ghostty = {
    enable = true;

    settings = {
      font-family = "FiraCode Nerd Font";
      font-size = 14;

      cursor-color = "#cbcee0";
      cursor-style = "underline";
      cursor-text = "#171f2b";
      theme = "coldWind";
    };

    themes = {
      coldWind = {
        background = "#353f4f";
        cursor-color = "#353f4f";
        foreground = "#cbcee0";
        palette = [
          "0=#353f4f"
          "1=#e8588d"
          "2=#a9e8e2"
          "3=#a9e8e2"
          "4=#e8588d"
          "5=#e8588d"
          "6=#a9e8e2"
          "7=#c8d4ce"
          "8=#171f2b"
          "9=#26303d"
          "10=#171f2b"
          "11=#d6a23b"
          "12=#ffeaac"
          "13=#ffaacc"
          "14=#ff56ac"
          "15=#cc54cc"
        ];
      };
    };
  };
}
