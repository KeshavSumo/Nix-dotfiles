{ config, pkgs, lib, ... }:
{
  programs.tmux = {
    enable = true;

    # Link your existing tmux.conf
    extraConfig = builtins.readFile "$HOME/Nix-dotfiles/.config/tmux/tmux.conf";
  };
}