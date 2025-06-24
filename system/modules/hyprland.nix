{config, pkgs, ...}:

{
  
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };


  environment.systemPackages = with pkgs; [
    kitty
    brightnessctl
    waybar
    rofi
    wl-clipboard
    wf-recorder

    # mpvpaper supports animated wallpapers (which is cool) swww was slow af
    mpvpaper

    hyprpicker

    # applets
    networkmanagerapplet
    blueman

    
  ];
}
