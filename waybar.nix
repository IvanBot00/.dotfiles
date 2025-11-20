{ ... }:

{
  programs.waybar.enable = true;

  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      height = 26;
      spacing = 10;

      modules-left = [ "hyprland/workspaces" ];
      modules-center = [ "clock" ];
      modules-right = [ "pulseaudio" "network" ];

      # modules-left
      "hyprland/workspaces" = {
        format = "{icon}";
        on-click = "activate";
        "persistent-workspaces" = {
          "*" = [1 2 3 4];
        };
      };

      # modules-center
      "clock" = {
        timezone = "America/Los_Angeles";
        format = "{:%a %b %d %H:%M}";
      };

      # modules-right
      "pulse-audio" = {
        format = "{volume}%";
        scroll-step = 5;
      };

      "network" = {
        format-wifi = "{essid} ({signalStrength}%)";
        format-ethernet = "{ifname}";
        format-disconnected = "X";
      };
    
    };
  };

  programs.waybar.style = ''
    * {
      border: none;
      border-radius: 0;
      font-size: 13px;
      min-height: 10px;
    }

    window#waybar {
      background-color: rgba(0, 0, 0, 0.3);
    }

    #workspaces {
      background: rgba(0, 0, 0, 0.5);
      border-radius: 10px;
      margin: 6px 5px;
      padding: 0px 5px;
    }

    #workspaces button {
      color: #B5E8E0;
      background: transparent;
      padding: 4px 4px;
    }

    #workspaces button.active {
      color: #89B4FA;
      text-shadow: 0 0 4px #ABE9B3;
    }

    #workspaces button.occupied {
      color: #A6E3A1;
    }

    #clock,
    #battery,
    #cpu,
    #memory,
    #network,
    #pulseaudio {
      padding: 0 10px;
      margin: 0 5px;
    }

    #clock {
      background-color: #64727D;
    }

    #network {
      background: #90b1b1;
    }

    #pulseaudio {
      background: #f1c40f;
      color: #000000;
    }

    '';  
}
