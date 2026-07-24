{ pkgs, config, ... }:
{
  # Navigation
  plugins.arrow = {
    enable = true;

    settings = {
      always_show_path = false;

      custom_actions = {
        open = "function(target_file_name, current_file_name) end";
      };

      full_path_list = [
        "update_stuff"
      ];

      global_bookmarks = false;
      hide_handbook = false;

      # Leader key only for arrow
      leader_key = ";";
      mappings = {
        clear_all_items = "C";
        delete_mode = "d";
        edit = "e";
        next_item = "j";
        open_horizontal = "-";
        open_vertical = "v";
        prev_item = "k";
        quit = "q";
        remove = "x";
        toggle = "s";
      };
      per_buffer_config = {
        lines = 5;
        satellite = {
          enable = false;
          overlap = true;
          priority = 1000;
        };
        sort_automatically = true;
        zindex = 10;
      };

      save_key = "cwd";
      separate_by_branch = false;
      separate_save_and_remove = false;
      show_icons = true;

      window = {
        border = "single";
        col = "auto";
        height = "auto";
        relative = "editor";
        row = "auto";
        style = "minimal";
        width = "auto";
      };

    };

  };

}
