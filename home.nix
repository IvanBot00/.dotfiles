{ config, pkgs, ... }:

{
  home.username = "navi";
  home.homeDirectory = "/home/navi";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;

  programs.zsh.enable = true;

  programs.git = {
    enable = true;
    userEmail = "helloivancar@gmail.com";
    userName = "IvanBot00";

    aliases = {
      s = "status";
    };
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true; 
  };

  programs.alacritty = {
    enable = true;
  };

   
  home.shellAliases = {
    nrs = "nixos-rebuild switch";
  };
}
