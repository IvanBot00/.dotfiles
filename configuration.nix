{ config, pkgs, ...}:

{
  imports = [
  ];

  home-manager.users.navi = {
  };

  home-manager.backupFileExtension = "backup";

  environment.systemPackages = with pkgs; [
    discord
    pavucontrol
    waybar
  ];

  programs.steam = {
    enable = true;
    #remotePlay.openFirewall = true;
    #dedicatedServer.openFirewall = true;
    #localnetworkGameTransfers.openFirewall = true;
  };

  programs.hyprland.enable = true;
}
