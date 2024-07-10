{
  services.cron.enable = true;

  services.dnsmasq.enable = true;
  services.dnsmasq.extraConfig =
    ''
      bind-interfaces
      listen-address=127.0.0.1
      address=/int/127.0.0.1
      address=/local/127.0.0.1
    '';
  services.dnsmasq.settings.server = [
    "1.1.1.1"
    "1.0.0.1"
    "2606:4700:4700::1111"
    "2606:4700:4700::1001"
  ];

  services.openssh.enable = true;
  services.openssh.ports = [ 2178 ];
  services.openssh.settings.PasswordAuthentication = false;
  services.openssh.settings.PermitRootLogin = "no";

  services.samba.enable = true;
  services.samba.openFirewall = true;
  services.samba.securityType = "user";
  services.samba.extraConfig = ''
    workgroup = WORKGROUP
    server string = kuba
    netbios name = kuba
    security = user
    hosts allow = 192.168.1. 127.0.0.1 localhost
    hosts deny = 0.0.0.0/0
    guest account = nobody
    map to guest = bad user
    use sendfile = yes
  '';
  services.samba.shares.movies = {
    path = "/mnt/shares";
    browseable = "yes";
    "read only" = "yes";
    "guest ok" = "yes";
  };
}

