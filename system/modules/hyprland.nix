{config, pkgs, ...}:

{
  
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };


  environment.systemPackages = with pkgs; [
    alacritty
    brightnessctl
    waybar
    rofi

    # applets
    networkmanagerapplet
    blueman

    
  ];
}
