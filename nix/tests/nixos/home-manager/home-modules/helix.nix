{ pkgs, config, ...}:
{
  programs.helix = {
    enable = true;

    settings = {
      editor = {
        line-number = "relative";
        continue-comments = false;
        auto-format = false;
        bufferline = "multiple";
        color-modes = true;
        insert-final-newline = true;
        popup-border = "all";
        true-color = true;

        cursor-shape = {
          normal = "block";
          insert = "underline";
          select = "hidden";
        };

        indent-guides = {
          render = true;
          character = "|";
          skip-levels = 1;
        };

        statusline = {
          left = [ "mode" "file-type" "version-control" ];
          center = [ "file-name" "file-modification-indicator" ];
          right = [ "total-line-numbers" "position" "position-percentage" ];
          
          separator = "<>";
          mode = {
            normal = "TRAVEL";
            insert = "DECIDE";
            select = "INSPECT";
          };

        };

        auto-save = {
          after-delay.timeout = 4000;
          after-delay.enable = true;
        };

        soft-wrap = {
          enable = true;
        };

      };

      theme = "nord";
    };
  };
}
