{config, pkgs, ...}:

{
  
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [

    # My terminal emulator is currently kitty. I feel like it's somehow smoother than alacritty (which was what I used before)
    kitty

    # you already know rofi :) (but I may create something custom using eww)
    rofi

    # for piping stuff to clipboard using "wl-copy"
    wl-clipboard

    # for screen-recordings (great together with slurp).
    wf-recorder

    # hyprcursor for custom cursor
    hyprcursor

    # mpvpaper supports animated wallpapers (which is cool) swww was slow af
    mpvpaper

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
