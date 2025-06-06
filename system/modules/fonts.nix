{pkgs, ...}:
{
  
  # fonts.packages = with pkgs; [ noto-fonts ];
   fonts.packages = with pkgs; [                                                                          
    noto-fonts                                                                                           
    noto-fonts-cjk-sans                                                                                       
    noto-fonts-emoji                                                                                     
    liberation_ttf
    nerd-fonts.hack
    roboto-mono
    font-awesome
  ];
}
