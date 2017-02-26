{
  networking.hostName = "nixos";
  networking.wireless.enable = true;

  networking.extraHosts =
    ''
      127.0.0.1 dev.jakubpawlowicz.com
    '';
}
