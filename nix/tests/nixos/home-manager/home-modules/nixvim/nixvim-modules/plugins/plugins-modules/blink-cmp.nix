{ pkgs, config, ... }:
{
  plugins.blink-cmp = {
    enable = true;

    settings = {
      appearance = {
        nerd_font_variant = "normal";
        use_nvim_cmp_as_default = true;
      };
      completion = {
        trigger = {
          show_on_keyword = true;
          show_on_trigger_character = true;
        };
        menu = {
          max_height = 1;
        };

        accept = {
          auto_brackets = {
            enabled = true;
            semantic_token_resolution = {
              enabled = false;
            };
          };
        };

        list = {
          selection = {
            preselect = true;
            auto_insert = true;
          };
        };

        documentation = {
          auto_show = true;
        };
      };
      signature = {
        enabled = true;
      };
      sources = {
        cmdline = [ ];
        providers = {
          buffer = {
            score_offset = -7;
          };
          lsp = {
            fallbacks = [ ];
          };
        };
      };
      keymap = {
        "<C-b>" = [
          "scroll_documentation_up"
          "fallback"
        ];
        "<C-e>" = [
          "hide"
        ];
        "<C-f>" = [
          "scroll_documentation_down"
          "fallback"
        ];
        "<C-j>" = [
          "select_next"
          "fallback"
        ];
        "<C-k>" = [
          "select_prev"
          "fallback"
        ];
        "<C-space>" = [
          "show"
          "show_documentation"
          "hide_documentation"
        ];
        "<leader>jk" = [
          "select_and_accept"
        ];
        "<Down>" = [
          "select_next"
          "fallback"
        ];
        "<S-Tab>" = [
          "snippet_backward"
          "fallback"
        ];
        "<Tab>" = [
          "snippet_forward"
          "fallback"
        ];
        "<Up>" = [
          "select_prev"
          "fallback"
        ];
      };
    };
  };
}
