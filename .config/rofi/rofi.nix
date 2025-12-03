{
  home.packages = with pkgs; [
    rofi
  ];

  home.file.".config/rofi/abuku.rasi".source = ./abuku.rasi.bak;
  home.file.".config/rofi/config-password.rasi".source = ./config-password.rasi;
  home.file.".config/rofi/config-power.rasi".source = ./config-power.rasi;
  home.file.".config/rofi/config-power.rasi.bak".source = ./config-power.rasi.bak;
  home.file.".config/rofi/config-wallpaper.rasi".source = ./config-wallpaper.rasi;
  home.file.".config/rofi/config.rasi".source = ./config.rasi;
}
