{config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    helix
    nil
    nixfmt-rfc-style
  ];
}
