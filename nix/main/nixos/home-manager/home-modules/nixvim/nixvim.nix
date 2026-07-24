{ pkgs, config, nixvim, ... }:
{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;

    globals.mapleader = " ";

    imports = [
      ./nixvim-modules/options.nix
      ./nixvim-modules/plugins/plugins.nix
      ./nixvim-modules/keymaps.nix
    ];
  };
}
