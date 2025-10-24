{ config, pkgs, ... }:

{
  services.cockpit = {
    enable = true;

    # NixOS generará un certificado autofirmado válido automáticamente
  };

  environment.systemPackages = with pkgs; [
    cockpit
    virt-manager  # opcional, para probar VMs localmente
  ];

  virtualisation.libvirtd = {
    enable = true;
    qemu.runAsRoot = true;
  };

  users.users.lucas.extraGroups = [ "libvirtd" ];
}

