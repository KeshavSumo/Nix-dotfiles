{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix # Include the results of the hardware scan.
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "thinkpad"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Indian/Mauritius";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";    
  };

  # Define user account.
  users.users.keshav = {
    isNormalUser = true;
    description = "keshav sumoreeah";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  #  Enables flakes and other nix settings
  nix.settings = {
    experimental-features = "nix-command flakes";
    auto-optimise-store = true;
    warn-dirty = false;
  };

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  system.stateVersion = "25.05"; 
}