{config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    helix
    ];
}
