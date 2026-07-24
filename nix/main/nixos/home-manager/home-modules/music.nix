{ pkgs, ... }: {
  
  # enabling mpd
  services.mpd = {
    enable = true;
    musicDirectory = "/home/kumoren/music";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "Sound Server"
      }
    '';
  };

  # enabling mcmpcpp to use with mpd
  programs.ncmpcpp = {
    enable = true;
    mpdMusicDir = "/home/kumoren/music";
    settings = {
      mpd_host = "127.0.0.1";
      mpd_port = "6600";
    };
  };
}
