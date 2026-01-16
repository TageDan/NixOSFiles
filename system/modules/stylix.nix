{inputs, ...}: {
  
    imports = [inputs.stylix.homeModules.stylix];
  stylix = {
    enable = true;
    autoEnable = true;
    image = ./config/hypr/bg.png;
    polarity = "dark";
  };
}
