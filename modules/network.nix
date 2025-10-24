{ config, pkgs, ... }:

{

networking.hostName = "nixos"; # Define your hostname.

  networking.networkmanager.enable = true;
networking.firewall.allowedTCPPorts = [ 9090 ];
networking.firewall.allowedTCPPortRanges = [ { from = 9090; to = 9090; } ];

  services.openssh.enable = true;


}
