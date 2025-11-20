{ config, pkgs, ... }:

{
  services.wpaperd.enable = true;

  services.wpaperd.settings = {
    default = {
      duration = "30m";
      mode = "center";
      path = "/home/navi/wallpapers";
    };
  };
}
