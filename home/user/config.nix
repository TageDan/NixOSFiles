let configDir = ../config;
in {
  home.file = {
    ".config/hypr".source = "${configDir}/hypr";
    ".config/helix".source = "${configDir}/helix";
    ".config/alacritty".source = "${configDir}/alacritty";
    ".config/waybar".source = "${configDir}/waybar";
  };
}
