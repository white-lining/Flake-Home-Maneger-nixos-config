{ pkgs, config, ... }:
{
  programs.zsh = {
    enable = true;
    autocd = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    autosuggestion = {
      enable = true;
      strategy = [ "history" "completion" ];
    };

    setOptions = [
      "NO_PROMPT_SP"
      "NO_PROMPT_CR"
    ];

  };
}
