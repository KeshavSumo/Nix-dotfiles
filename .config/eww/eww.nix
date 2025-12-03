{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    eww
  ];

  home.file.".config/eww/eww.scss".source = ./eww.scss;
  home.file.".config/eww/eww.yuck".source = ./eww.yuck;
}
