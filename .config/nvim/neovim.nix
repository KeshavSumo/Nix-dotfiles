{

  home.file.".config/nvim/init.lua".source = ~/Nix-dotfiles/.config/nvim/init.lua;
  home.file.".config/nvim/lazy-lock.json".source = ~/Nix-dotfiles/.config/nvim/lazy-lock.json;
  home.file.".config/nvim/colors/color.vim".source = ~/Nix-dotfiles/.config/nvim/colors/color.vim;

  
  home.file.".config/nvim/lua".source = ~/Nix-dotfiles/.config/nvim/lua;

  {
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    
    extraPackages = with pkgs; [  
      python3
    ];
  };
}
  
}