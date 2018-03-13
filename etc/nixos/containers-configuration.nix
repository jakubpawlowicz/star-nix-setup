{
  containers.database =
    {
      autoStart = true;
      config =
        { config, pkgs, lib, ... }:
        {
          services.postgresql.authentication = lib.mkForce ''
            # Generated file; do not edit!
            # TYPE  DATABASE        USER            ADDRESS                 METHOD
            local   all             all                                     trust
            host    all             all             127.0.0.1/32            trust
            host    all             all             ::1/128                 trust
          '';
          services.postgresql.enable = true;
          services.postgresql.package = pkgs.postgresql95;
        };
    };
}
