{ self, pkgs, ... }:
{
  keymaps = [


    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Ex<CR>";
    }

    {
      mode = "n";
      key = "<leader>zz";
      action = "<cmd>ZenMode<CR>";
    }

    {
      mode = "n";
      key = "<leader>mm";
      action = "<cmd>Twilight<CR>";
    }

    {
      mode = [ "n" "x" "o" ];
      key = "<leader>s";
      action = "<Plug>(leap)";
    }

    {
      mode = "n";
      key = "<leader>w";
      action = "<cmd>NvimTreeOpen<CR>";
    }

    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>NvimTreeClose<CR>";
    }

  ];
}
