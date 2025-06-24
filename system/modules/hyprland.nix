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

    # swww has animated wallpapers (which is cool)
    swww

    hyprpicker

    # applets
    networkmanagerapplet
    blueman

    
  ];
}
