{
  services.xserver.enable = true;
  services.xserver.layout = "us";
  services.xserver.xkbOptions = "eurosign:e";
  services.xserver.autorun = false;
  services.xserver.windowManager.i3.enable = true;

  virtualisation.docker.enable = true;
}
