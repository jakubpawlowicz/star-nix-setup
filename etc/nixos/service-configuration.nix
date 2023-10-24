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
}

