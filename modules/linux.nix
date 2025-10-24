{ config, pkgs, ... }:
{
	boot.kernelModules = [ "kvm" "kvm_intel" ];
	boot.loader.grub.enable = true;
	boot.loader.grub.device = "/dev/sda";
	boot.loader.grub.useOSProber = true;


}
