{ pkgs, config, ... }:
{
  # Simple or small plugins
  plugins = {

    git-worktree = {
      enable = true;
      enableTelescope = true;
    };

    # CSS colors
    highlight-colors.enable = true;
    # Icons
    web-devicons.enable = true;
    # Git staus guides in the buffer
    gitsigns.enable = true;
    # Comments that are highlighted
    todo-comments.enable = true;
    # Floating cmdline, notifications
    noice.enable = true;
    # Easier and faster navigation
    neoscroll = { 
      enable = true;

      settings = {
        easing_function = "quadratic";
        hide_cursor = false;
      };
    };

    # Insert, delete, and change pairs
    sandwich.enable = true;

    # Better w, e, b behaviour.
    spider.enable = true;

    # Jump through visible text very easily.
    leap = {
      enable = true;

      settings = {
        keymaps = [
          {
            mode = [ "n" "x" "o" ];
            key = "<leader>s";
            action = "<Plug>(leap)";
          }
        ];
      };
    };

    nvim-tree = {
      enable = true;
    };

  };
}
