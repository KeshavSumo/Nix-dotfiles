
{ config, pkgs, lib, ... }:
{
  programs.zsh = {
    enable = true;
    ohMyZsh.enable = false;

    # Source both interactive and env files
    initExtra = ''
      source ${config.home.file."$HOME/Nix-dotfiles/.config/nix-config/.zshenv"}
      source ${config.home.file."$HOME/Nix-dotfiles/.config/nix-config/.zshrc"}
    '';
  };
}