{ inputs, ... }:
{
  programs.librewolf = {
    enable = true;

    policies = {

      #### DEBLOAT ###
      DisableFirefoxStudies = true;
      #DisableFirefoxScreenshots = true;
      DontCheckDefaultBrowser = true;
      UserMessaging = {
        ExtensionRecommendations = false;
        UrlbarInterventions = false;
        SkipOnboarding = true;
        MoreFromMozilla = false;
        FirefoxLabs = true;
      };
      FirefoxSuggest = {
        WebSuggestions = false;
        SponsoredSuggestions = false;
        ImproveSuggest = false;
        Locked = true;
      };
    };

    profiles.my-profile = {
      extensions.packages = with inputs.firefox-addons.packages."x86_64-linux"; [
        ublock-origin
        sponsorblock
        darkreader
        foxyproxy-standard
        bitwarden
      ];
      settings = {
        "extensions.autoDisableScopes" = 0;
        "extensions.update.autoUpdateDefault" = false;
        "extensions.update.enabled" = false;

        "sidebar.revamp" = true;
        "sidebar.revamp.round-content-area" = true;
        "sidebar.verticalTabs" = true;
        "sidebar.customize.expand_on_hover_enabled" = true;
        "webgl.disabled" = false;
        "privacy.resistFingerprinting" = false;
      };
    };

  };

  stylix.targets.librewolf.profileNames = [ "my-profile" ];

}
