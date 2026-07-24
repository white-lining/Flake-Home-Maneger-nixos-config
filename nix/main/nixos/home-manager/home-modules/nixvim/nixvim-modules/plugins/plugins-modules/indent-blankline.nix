{ pkgs, config, ... }:
{
  plugins.indent-blankline = {
    enable = true;

    settings = {
      exclude = {

        buftypes = [
          "terminal"
          "quickfix"
        ];

        filetypes = [
          ""
          "checkhealth"
          "help"
          "lspinfo"
          "packer"
          "TelescopePrompt"
          "TelescopeResults"
        ];
      };

      indent = {
        char = "|";
      };

      scope = {
        show_end = true;
        show_exact_scope = true;
        show_start = true;;
      };
    };
  };
}
