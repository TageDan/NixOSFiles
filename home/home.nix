{
  pkgs,
  ...
}:

{
  home = {

    username = "tage";
    homeDirectory = "/home/tage";

    imports = [ ./user ];

    # cool tools
    packages = with pkgs; [

      # cli-tools
      tree
      ffmpeg
      htop
      unzip
      imagemagick
      file

      # cool cli-tools (mostly rust stuff, actually only rust stuff i think)
      zoxide
      ripgrep
      presenterm # this is soooo cool
      tokei
      eza
      bat
      dust
      hyperfine
      bacon
      spotify-player
      fselect # this is nice have always struggled with find and stuff

      # development

      # enviroments
      direnv

      # rust
      cargo
      clippy
      rustc
      rustfmt
      rust-analyzer

      # latex
      texlab
      tectonic

      # markdown
      glow

      # pdf
      zathura

      # python
      python3
      uv # python with uv is like rust with cargo, awesome!

      # c/c++
      gcc
      gnumake

      # tui programs
      gitui

      # network cli tools
      dnsutils # nslookup and dig
      bettercap # hacking and monitoring
      nmap
      netcat

      # screenshot tools (I like these :D)
      grim
      swappy
      slurp

      # gui
      gimp
      vlc
      libresprite

      # gaming
      mgba
      rmg-wayland

      # cad
      freecad-wayland

      # discord
      discord

    ];

    # never change this ( vvvv )
    home.stateVersion = "24.11";
  };
}
