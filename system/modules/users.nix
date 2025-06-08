{config, pkgs, ...}:

{
  users.users.tage = {
    isNormalUser = true;
    description = "tage";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" "audio" "dialout" ]; # Dialout for usb reading
  };
}
