{ pkgs, ... }:

{
  programs.btm.enable = true;

  home.file.".config/bottom/bottom.toml" = {
    source = ./bottom.toml;  
    executable = false;      
  };
}
