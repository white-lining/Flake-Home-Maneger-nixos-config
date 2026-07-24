{ pkgs, ...}: {
  
  programs.git = {
    
    enable = true;
    settings = {
      user = {
        name = "kumoren";
        email = "mnievas640@gmail.com";
      };
    };
  };
}
