{
  services.cron.enable = true;

  services.dnsmasq.enable = true;
  services.dnsmasq.extraConfig =
    ''
      bind-interfaces
      listen-address=127.0.0.1
      address=/local/127.0.0.1
    '';
  services.dnsmasq.servers = [ "8.8.8.8" "4.4.4.4" ];
}
