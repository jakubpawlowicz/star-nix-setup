{
  services.dnsmasq.enable = true;
  services.dnsmasq.extraConfig =
    ''
      bind-interfaces
      listen-address=127.0.0.1
      address=/dev/127.0.0.1
    '';
  services.dnsmasq.servers = [ "8.8.8.8" "4.4.4.4" ];

  services.xserver.enable = true;
  services.xserver.layout = "us";
  services.xserver.xkbOptions = "eurosign:e";
  services.xserver.autorun = false;
  services.xserver.windowManager.i3.enable = true;

  virtualisation.docker.enable = true;
}
