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
    # Floating terminal
    ./plugins-modules/toggleterm.nix#
    # indentation guide
    #./plugins-modules/indent-blankline.nix#
    # Cursor guidelines
    ./plugins-modules/cursorline.nix#
    # File bookmarking
    ./plugins-modules/arrow.nix#
    # Small plugins
    ./plugins-modules/small.nix#
    # Start screen
    ./plugins-modules/dashboard.nix#
    # Better F/f command
    ./plugins-modules/eyeliner.nix#
    # Indentation guide but cooler.
    ./plugins-modules/hlchunk.nix
    # Completion
    ./plugins-modules/blink-cmp.nix

  ];
}
