{ pkgs, config, ...}:
{
  plugins = {
    mini-completion = {
      enable = true;
      settings = {
        delay = {
          completion = 100;
          info = 100;
          signature = 50;
        };
        fallback_action = "<C-n>";
        lsp_completion = {
          auto_setup = true;
          process_items = lib.nixvim.mkRaw "nil";
          snippet_insert = lib.nixvim.mkRaw "nil";
          source_func = "completefunc";
        };
        mappings = {
          force_fallback = "<C-m>";
          force_twostep = "<C-Space>";
          scroll_down = "<C-f>";
          scroll_up = "<C-b>";
        };
        window = {
          info = {
            border = lib.nixvim.mkRaw "nil";
            height = 25;
            width = 80;
          };
          signature = {
            border = lib.nixvim.mkRaw "nil";
            height = 25;
            width = 80;
          };
        };
      };
    };

    mini-icons = {
      enable = true;
      settings = {
        extension = {
          lua = {
            hl = "Special";
          };
        };
        file = {
          "init.lua" = {
            glyph = "";
            hl = "MiniIconsGreen";
          };
        };
        style = "glyph";
      };
    };

    mini-snippets = {
      enable = true;
      settings = {
        expand = {
          insert = lib.nixvim.mkRaw "nil";
          match = lib.nixvim.mkRaw "nil";
          prepare = lib.nixvim.mkRaw "nil";
          select = lib.nixvim.mkRaw "nil";
        };
        mappings = {
          expand = "<C-j>";
          jump_next = "<C-l>";
          jump_prev = "<C-h>";
          stop = "<C-c>";
        };
        snippets = lib.nixvim.emptyTable;
      };
    };
  };
}
