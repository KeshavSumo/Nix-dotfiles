{ config, pkgs, lib, ... }:

{
  
  home.file.".config/hypr/hyprland.conf".source = ./hyprland.conf;

  programs.hyprlock.enable = true;   # Lock screen 
  home.file.".config/hypr/hyprlock.conf".source = ./hyprlock.conf;

  services.hypridle = {           # Idle management
    enable = true;
    settings = null;
  };  
  home.file.".config/hypr/hypridle.conf".source = ./hypridle.conf;

  programs.hyprpaper.enable = true;  # Wallpaper manager
  home.file.".config/hypr/hyprpaper.conf".source = ./hyprpaper.conf;
}
