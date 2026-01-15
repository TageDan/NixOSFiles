{pkgs, ...}:
let configDir = ../config;
in {
  home.file = {
    ".config/hypr".source = "${configDir}/hypr";
    ".config/helix".source = "${configDir}/helix";
    ".config/rofi".source = "${configDir}/rofi";
    ".config/swappy".source = "${configDir}/swappy";
    ".config/rio".source = "${configDir}/rio";
    ".icons/default".source = "${pkgs.vanilla-dmz}/share/icons/Vanilla-DMZ";
  };
}
