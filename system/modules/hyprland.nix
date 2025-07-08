{config, pkgs, ...}:

{
  
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };


  environment.systemPackages = with pkgs; [
    kitty

    waybar
    rofi
    wl-clipboard
    wf-recorder

    # hyprcursor for custom cursor
    hyprcursor

    # mpvpaper supports animated wallpapers (which is cool) swww was slow af
    mpvpaper

    hyprpicker

    # applets
    networkmanagerapplet
    blueman

    # wacky widgets
    eww
    alsa-utils
    brightnessctl
    
  ];
}
