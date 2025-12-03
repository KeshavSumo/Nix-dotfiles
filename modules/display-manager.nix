{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ly
    hyprland 
  ];
}