{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    htop
  ];

  home.file.".config/htop/htoprc".source = ./htoprc;
}
