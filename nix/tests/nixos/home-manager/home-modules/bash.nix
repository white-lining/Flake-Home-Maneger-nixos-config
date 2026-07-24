{ pkgs, ... }: { 
  
  programs.bash = {
    enable = true;

    enableCompletion = true;

    shellAliases = {
      nrs = "sudo nixos-rebuild switch";
      nrsf = "sudo nixos-rebuild switch --impure --flake .";
      nrtf = "sudo nixos-rebuild test --impure --flake .";
    };

    initExtra = ''
      export PS1="\[\e[37m\](\[\e[36m\]\u\[\e[37m\]|\[\e[33m\]\w\[\e[37m\])\n \[\e[00m\]"
      export EDITOR=nvim
    '';
  };
}
