{ config, pkgs, ... }:

{
  services.samba = {
    enable = true;
    openFirewall = true;

    settings = {
      global = {
        workgroup = "WORKGROUP";  # Grupo de trabajo para la red
        "netbios name" = "nix-server";  # Nombre del servidor en la red
        "server string" = "NixOS Samba Server";  # Descripción del servidor
        security = "user";  # Modo de autenticación: usuario
        "map to guest" = "Never";  # No mapear usuarios desconocidos a invitados
        "dns proxy" = "no";  # Deshabilitar el proxy DNS
        "log level" = "2";  # Nivel de detalle de los logs
      };

      # Recurso compartido privado
      private = {
        path = "/home/lucas/shared";  # Ruta al directorio compartido
        browseable = "yes";  # Hacer visible el recurso en la red
        "read only" = "no";  # Permitir escritura
        "guest ok" = "no";  # Requiere autenticación
        "valid users" = [ "lucas" ];  # Usuarios autorizados
        "create mask" = "0644";  # Permisos para archivos nuevos
        "directory mask" = "0755";  # Permisos para directorios nuevos
      };
    };
  };

  # Publicar el servidor en la red local
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    publish = {
      enable = true;
      userServices = true;
      workstation = true;
    };
  };
}

