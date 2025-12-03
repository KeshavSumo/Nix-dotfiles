{ config, pkgs, lib, ... }:
{
  programs.zsh = {
    enable = true;
    ohMyZsh.enable = false;

    
    initExtra = ''
      source ${config.home.file."$HOME/Nix-dotfiles/.config/nix-config/p10k.zsh"}'';    
  };
}