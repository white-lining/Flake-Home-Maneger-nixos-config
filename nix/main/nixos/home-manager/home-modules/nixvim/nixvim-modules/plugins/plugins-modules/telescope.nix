{ pkgs, config, ... }:
{
  plugins.telescope = {
    enable = true;

    keymaps = {

      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "Find all files";
        };
      };

      "<leader>fg" = {
        action = "live_grep";
        options = {
          desc = "Find words within files";
        };
      };

      "<leader>fb" = {
        action = "buffers";
        options = {
          desc = "Find active buffers";
        };
      };

    };

  };

}
