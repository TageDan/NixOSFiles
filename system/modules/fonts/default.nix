{pkgs, ...}:

{  
  # fonts.packages = with pkgs; [ noto-fonts ];
  let
   the-wild-breath-of-zelda-font = pkgs.callPackage ./the-wild-breath-of-zelda.nix {inherit pkgs};
  in
   fonts.packages = with pkgs; [                                                                          
    noto-fonts                                                                                           
    noto-fonts-cjk-sans                                                                                       
    noto-fonts-emoji                                                                                     
    liberation_ttf
    nerd-fonts.hack
    roboto-mono
    font-awesome
    the-wild-breath-of-zelda-font
  ];
}
