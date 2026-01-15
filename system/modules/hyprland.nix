{config, pkgs, ...}:

{
  
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [

    # rio is rust and pretty smooth
    rio

    # you already know rofi :) (but I may create something custom using eww)
    rofi

    # for piping stuff to clipboard using "wl-copy"
    wl-clipboard

    # for screen-recordings (great together with slurp).
    wf-recorder

    # hyprcursor for custom cursor
    hyprcursor

    # simplify wallpapers for me
    hyprpaper

    hyprpicker

    # apps to control audio, video, bluetooth, etc.
    blueman
    pavucontrol
    alsa-utils
    brightnessctl

    # wacky widgets
    eww

    
  ];
}
