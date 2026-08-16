{ pkgs, config, lib, ... }:
{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = false;

    settings = {
      add_newline = true;

      format = lib.concatStrings [
        " $hostname/"
        "$username"
        # "$line_break"
        "$directory"
        "$fill"
        "$git_branch"
        "$git_status"
        "$nix_shell"
        "$line_break"
        " ($character)  "
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
        success_symbol = "";
        error_symbol = "";
        vicmd_symbol = "󱢖";
      };

      username = {
        disabled = false;
        format = "[$user]($style)";
        style_user = "bold blue";
        show_always = true;
      };

      hostname = {
        disabled = false;
        format = "[$hostname]($style)";
        style = "bold red";
        ssh_only = false;
      };

      directory = {
        disabled = false;
        format = " -> [$path]($style)";
        style = "bold cyan";
        truncation_length = 2;
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
