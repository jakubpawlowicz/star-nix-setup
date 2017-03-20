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
  services.xserver.synaptics.additionalOptions =
    ''
      Option "HorizScrollDelta" "-111"
      Option "VertScrollDelta" "-111"
    '';
  services.xserver.synaptics.enable = true;
  services.xserver.synaptics.minSpeed = "1.25";
  services.xserver.synaptics.palmDetect = true;
  services.xserver.synaptics.twoFingerScroll = true;

  virtualisation.docker.enable = true;

  virtualisation.virtualbox.host.enable = true;
}
