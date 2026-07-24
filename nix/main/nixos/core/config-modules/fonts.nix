{ pkgs, config, ... }:
{
  fonts = {
    fontconfig.enable = true;
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      nerd-fonts.inconsolata-lgc
      nerd-fonts.fira-code
    ];
  };
}
