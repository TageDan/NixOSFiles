{ inputs, ... }:
{

  imports = [ inputs.stylix.nixosModules.stylix ];
  stylix = {
    enable = true;
    autoEnable = true;
    image = ../../home/config/hypr/bg.png;
    polarity = "dark";
  };
}
