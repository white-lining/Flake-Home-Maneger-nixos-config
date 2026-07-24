{ pkgs, config, lib, ... }:
{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = false;

    settings = {
      add_newline = true;

      format = lib.concatStrings [
        "$directory"
        "$git_branch"
        "$git_status"
        "$fill"
        "$nix_shell"
        "$time"
        "$line_break"
        "$character"
      ];

      fill = {
        symbol = " ";
      };

      nix_shell = {
        symbol = "";
        disabled = false;
        style = "bold blue";
        format = " via [$symbol$state(\($name\))]($style) ";
      };

      character = {
        success_symbol = "";
        error_symbol = "";
        vicmd_symbol = "󱢖";
      };

      time = {
        disabled = false;
        style = "bold red";
        format = "󰔟[$time]($style) ";
        time_format = "%H%p-%M";
      };

    };
  };
}
