{ self, pkgs, config, ... }:
{
  imports = [
    # Status line and colorscheme
    ./plugins-modules/colorscheme.nix#
    # highlightning
    ./plugins-modules/treesitter.nix#
    # Find files and words
    ./plugins-modules/telescope.nix#
    # Focus
    ./plugins-modules/twilight.nix#
    # indentation guide
    /plugins-modules/indent-blankline.nix#
    # Cursor guidelines
    ./plugins-modules/cursorline.nix#
    # Small plugins
    ./plugins-modules/small.nix#
    # Start screen
    ./plugins-modules/dashboard.nix#

    # mini plugins
    ./plugins-modules/miniPlugins.nix #

    #lsp config
    ./plugins-modules/lsp.nix #

  ];
}
