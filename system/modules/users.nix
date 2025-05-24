{config, pkgs, ...}:

{
  users.users.tage = {
    isNormalUser = true;
    description = "tage";
    shell = pkgs.fish;
    extraGroups = [ "networkmanager" "wheel" "audio" "dialout" ]; # Dialout for usb reading
  };
}
