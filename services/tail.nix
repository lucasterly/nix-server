{ config, pkgs, lib,  ... }:
{
 services.tailscale.enable = true;
 services.tailscale.extraUpFlags = [ "--advertise-exit-node" ];


}
