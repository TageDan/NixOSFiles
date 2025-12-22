{pkgs, ...}:
{
  boot.kernelModules = [ "kvm-amd" "kvm-intel" ]; 
  virtualisation.libvirtd.enable = true; 
  programs.virt-manager.enable = true;

  environment.systemPackages = with pkgs; [
    qemu
  ];
}
