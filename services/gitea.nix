{ config, pkgs, ... }:

{
  services.gitea = {
    enable = true;
    appName = "Gitea";
    user = "gitea";
    group = "gitea";

    database.type = "sqlite3";
    httpAddress = "0.0.0.0";
    httpPort = 3000;
    rootUrl = "http://localhost:3000/";

    settings = {
      server = {
        DOMAIN = "localhost";
        ROOT_URL = "http://localhost:3000/";
        HTTP_PORT = 3000;
      };
      repository = {
        DEFAULT_BRANCH = "main";
      };
    };
  };

  networking.firewall.allowedTCPPorts = [ 3000 ];
}

