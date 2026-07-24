{ pkgs, config, ... }:
{
  programs.tmux = {
    enable = true;

    shortcut = "h";
    prefix = "C-h";
    clock24 = true;
    keyMode = "vi";
    terminal = "screen-256color";
    secureSocket = true;
    disableConfirmationPrompt = true;

    plugins = with pkgs.tmuxPlugins; [
      {
        plugin = nord;
      }
    ];

    extraConfig = ''
      unbind-key x
      bind-key x kill-window
      
      unbind-key n
      bind-key j next-window

      unbind-key p
      bind-key k previous-window

      set -g default-terminal "tmux-256color"
      set -as terminal-features ",xterm-256color:RGB"
    '';
  };
}
