{ pkgs, ... }:
let
  configDir = ../config;
in
{
  home.file = {
    ".config/hypr".source = "${configDir}/hypr";
    # ".config/helix/languages.toml".source = "${configDir}/helix/languages.toml";
    ".config/rofi".source = "${configDir}/rofi";
    ".config/swappy".source = "${configDir}/swappy";
    ".icons/default".source = "${pkgs.vanilla-dmz}/share/icons/Vanilla-DMZ";
  };
}
