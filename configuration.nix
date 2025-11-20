{ config, pkgs, ...}:

{
  imports = [
    
  ];

  programs.fish.enable = true;

  users.users.navi = {
    isNormalUser = true;
    description = "Ivan";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
    ];
    shell = pkgs.fish;
  };

  environment.systemPackages = with pkgs; [
    alacritty
    discord
    pavucontrol
    protonmail-desktop
    todoist-electron
    waybar
    wineWowPackages.stable
    vlc
  ];

  programs.steam = {
    enable = true;
    #remotePlay.openFirewall = true;
    #dedicatedServer.openFirewall = true;
    #localnetworkGameTransfers.openFirewall = true;
  };

  programs.hyprland.enable = true;

  services.gnome.gnome-keyring.enable = true;
}
