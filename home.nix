{ pkgs, config, lib, ... }:

{
  home.stateVersion = "25.05";
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./.config/bottom/bottom.nix
    ./.config/dunst/dunst.nix
    ./.config/eww/eww.nix
    ./.config/htop/htop.nix
    ./.config/hypr/hyprland.nix
    ./.config/kitty/kitty.nix
    ./.config/neofetch/neofetch.nix
    #./.config/nvim/neovim.nix
    ./.config/powerlevel10k/powerlevel10k.nix
    ./.config/rofi/rofi.nix
    ./.config/tmux/tmux.nix
    ./.config/waybar/waybar.nix
    ./.config/wofi/wofi.nix
    ./.config/yazi/yazi.nix
    ./.config/zsh/zsh.nix
  ];
  
  home.packages = with pkgs; [
    brave
  ];
}