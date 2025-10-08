{ config, pkgs, ... }:

{
  imports = [
    ./hyprland.nix
  ];

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

  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
	layer = "top";
	position = "top";
	height = 30;
	spacing = 10;

	modules-right = [ "pulseaudio" "network" ];

	# modules-right
	"pulseaudio" = {
	  format = "{volume}%";
	  scroll-step = 5;
	};

	"network" = {
	  format-wifi = "{essid} ({signalStrength}%";
	  format-ethernet = "{ifname}";
	  format-disconnected = "X";
	};

      };
    };
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
