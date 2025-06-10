{inputs, ...}:
{
  programs.firefox = {
    enable = true;

    profiles.tage = {
      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [ublock-origin sponsorblock darkreader];
    };

  };
}
