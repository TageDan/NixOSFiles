{ inputs, config, pkgs, ... }:

{
  home.username = "tage";
  home.homeDirectory = "/home/tage";

  imports = [./user];

  # cool tools
  home.packages = with pkgs; [

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
    du-dust
    hyperfine
    bacon
    spotify-player
    fselect # this is nice have always struggled with find and stuff

    # development
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

    unetbootin

    # cad
    openscad
    freecad-wayland    

    # discord
    discord
  ];


  programs.home-manager.enable = true;
  
  home.stateVersion = "24.11";
}

