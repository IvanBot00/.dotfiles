{ ... }:

let
  browser = "firefox";
  terminal = "alacritty";
  menu = "fuzzel";
in
{
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "waybar"
    ];
      input = {
	kb_layout = "us";
	follow_mouse = 1;
	sensitivity = 0;
	touchpad = {
	  natural_scroll = true;
	};
      };

      general = {
	"$mainMod" = "SUPER";
      };

      decoration = {
	rounding = 0;

	blur = {
	  enabled = true;
	  size = 3;
	  passes = 2;
	  brightness = 1;
	  noise = 0;
	  xray = true;
	};

	shadow = {
	  enabled = true;
	  offset = "0 2";
	  range = 20;
	  render_power = 3;
	  color = "rgba(00000055)";
	};
      };

      bind = [
	"$mainMod, RETURN, exec, ${terminal}"
	"$mainMod, F, exec, ${browser}"
	"$mainMod, SPACE, exec, ${menu}"
	"$mainMod, W, killactive"
	# Work spaces
	"$mainMod, 1, workspace, 1"
	"$mainMod, 2, workspace, 2"
	"$mainMod, 3, workspace, 3"
	"$mainMod, 4, workspace, 4"
	# Scroll workspaces
	"$mainMod, mouse_down, workspace, e+1"
	"$mainMod, mouse_up, workspace, e-1"
      ];
    };
}
