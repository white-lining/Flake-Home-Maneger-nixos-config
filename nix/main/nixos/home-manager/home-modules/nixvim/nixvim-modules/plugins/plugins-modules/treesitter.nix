{ pkgs, config, ... }:
{
  plugins.treesitter = {
    enable = true;
    nixGrammars = true;
    settings = {
      highlight = {
      	enable = true;
      };
      indent.enable = true;
    };
    folding = false;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      json
      java
      python
      nix
      markdown
      c
      cpp
    ];
  };
}
