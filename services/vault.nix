{ config, pkgs, ... }:
{

{ config, pkgs, ... }:

{
  # Activar Vaultwarden
  services.vaultwarden = {
    enable = true;
    config = {
      DOMAIN = "http://10.0.0.47"; # IP LAN de tu máquina NixOS
      ROCKET_ADDRESS = "0.0.0.0";           # Escuchar en todas las interfaces
      ROCKET_PORT = 8000;
      SIGNUPS_ALLOWED = false;             # Evita registros abiertos
      ADMIN_TOKEN = "pon-un-token-fuerte";
      DATA_FOLDER = "/var/lib/bitwarden_rs";
    };
  };

  # Abrir el puerto en el firewall para la red local
  networking.firewall.allowedTCPPorts = [ 2222 ];

  # Opcional: asegurar persistencia de datos
  fileSystems."/var/lib/bitwarden_rs" = {
    device = "/var/lib/bitwarden_rs";
    neededForBoot = true;
  };
}



}
