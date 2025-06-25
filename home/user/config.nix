let configDir = ../config;
in {
  home.file = {
    ".config/hypr".source = "${configDir}/hypr";
    ".config/helix".source = "${configDir}/helix";
    ".config/alacritty".source = "${configDir}/alacritty";
    ".config/waybar".source = "${configDir}/waybar";
    ".config/rofi".source = "${configDir}/rofi";
    ".config/swappy".source = "${configDir}/swappy";
    ".config/swappy".source = "${configDir}/swappy";
    ".config/eww".source = "${configDir}/eww";
  };
}
