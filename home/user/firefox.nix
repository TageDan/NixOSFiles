{inputs, ...}:
{
  programs.firefox = {
    enable = true;

    profiles.tage = {
      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [ublock-origin sponsorblock darkreader];

      userChrome = ''
        html {
  --custom-bg-light: #f1f1fa;
  --custom-bg-dark: #262629;
  --custom-bg: var(--custom-bg-light);
}

@media (prefers-color-scheme: dark) {
  html {
    --custom-bg: var(--custom-bg-dark);
  }
}

body {
  background: var(--custom-bg) !important;
}

html:not([privatebrowsingmode="temporary"]) #navigator-toolbox {
  padding-top: 3px;
  padding-bottom: 4px;
  background: var(--custom-bg) !important;
  border-bottom: 0 !important;
}

#nav-bar {
  background: var(--custom-bg) !important;
}

html:not([privatebrowsingmode="temporary"]) #sidebar-box {
  background: var(--custom-bg) !important;
}

html:not([privatebrowsingmode="temporary"]) #sidebar-splitter {
  border: none !important;
  background: transparent !important;
  width: 1px !important;
}

html:not([privatebrowsingmode="temporary"]) #TabsToolbar {
  visibility: collapse !important;
}

#TabsToolbar {
  background: var(--custom-bg) !important;
}

html:not([privatebrowsingmode="temporary"]) .titlebar-buttonbox-container {
  position: absolute;
  right: 0;
  top: 9px;
  display: flex;
  justify-content: center;
  width: 110px !important;
}

.titlebar-button {
  width: 36px !important;
}

html:not([privatebrowsingmode="temporary"]) #nav-bar {
  width: calc(100% - 110px);
}

html:not([privatebrowsingmode="temporary"]) #sidebar-header {
  display: none;
}

#identity-icon-label {
  display: none;
}

#urlbar {
  left: 50% !important;
  transform: translateX(-50%);
  max-width: 960px !important;
}

#urlbar:not([breakout-extend]) #urlbar-background {
  background: none !important;
  background-color: transparent !important;
}

html:not([privatebrowsingmode="temporary"]) #sidebar-box {
  --uc-sidebar-width: 45px;
  --uc-sidebar-hover-width: 360px;
  --uc-autohide-sidebar-delay-before: 125ms;
  --uc-autohide-sidebar-delay-after: 300ms;
  --uc-autohide-transition-duration: 300ms;
  --uc-autohide-transition-type: ease-in-out;
  position: relative;
  min-width: var(--uc-sidebar-width) !important;
  width: var(--uc-sidebar-width) !important;
  max-width: var(--uc-sidebar-width) !important;
  z-index: 1;
}

html:not([privatebrowsingmode="temporary"])
  #main-window[sizemode="fullscreen"]
  #sidebar-box {
  --uc-sidebar-width: 1px;
}

html:not([privatebrowsingmode="temporary"]) #sidebar-splitter {
  display: none;
}

html:not([privatebrowsingmode="temporary"]) #sidebar {
  transition: all var(--uc-autohide-transition-duration)
    var(--uc-autohide-transition-type) var(--uc-autohide-sidebar-delay-after) !important;
  min-width: var(--uc-sidebar-width) !important;
}

html:not([privatebrowsingmode="temporary"]) #sidebar-box:hover > #sidebar {
  min-width: var(--uc-sidebar-hover-width) !important;
  transition-delay: var(--uc-autohide-sidebar-delay-before) !important;
}

html:not([privatebrowsingmode="temporary"]) .sidebar-panel {
  background-color: transparent !important;
  color: var(--newtab-text-primary-color) !important;
}
      '';
    };

  };
}
