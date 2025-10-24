
{ config, pkgs, ... }:

{
  imports =
    [ 
    	./modules/hardware-configuration.nix
	./services/gitea.nix
#	./services/samba.nix
	./modules/nvidia.nix
#	./modules/virt.nix
#	./services/sunshine.nix
	./services/tail.nix
	./modules/desktop.nix
	./modules/packages.nix
#	./services/vault.nix
#	./services/nextclound.nix
#	./modules/disk.nix
#	./services/jelly.nix
#	./modules/network.nix
	./modules/linux.nix
	./modules/lang.nix
	./modules/users.nix

    ];


 


  system.stateVersion = "25.05";
}
