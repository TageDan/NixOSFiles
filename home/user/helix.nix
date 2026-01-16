{...}:
{
  programs.helix = {
    enable =  true;
    languages = builtins.fromTOML (builtins.readFile ../config/helix/languages.toml) ;
    settings = builtins.fromTOML (builtins.readFile ../config/helix/config.toml);
  };
}
