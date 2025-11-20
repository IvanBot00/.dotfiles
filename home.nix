{ config, pkgs, ... }:

{
  imports = [
    ./hyprland.nix
    ./waybar.nix
    ./wpaperd.nix
  ];

  home.username = "navi";
  home.homeDirectory = "/home/navi";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userEmail = "helloivancar@gmail.com";
    userName = "IvanBot00";

    aliases = {
      s = "status";
    };
  };

  programs.helix = {
    enable = true;
    defaultEditor = true;
  };

  programs.neovim = {
    enable = true;
    viAlias = true; 
  };

  programs.alacritty = {
    enable = true;
  };

  programs.fuzzel = {
    enable = true;

    settings = {
      main = {
	font = "FiraCode Nerd Font:size=10";
	terminal = "alacritty";
	width = 50;
	lines = 10;
      };

      colors = {
	background = "282a36ff";
      };
    };
  };

   
  home.shellAliases = {
    nrs = "nixos-rebuild switch";
  };

  fonts.fontconfig.enable = true;
}
