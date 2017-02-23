{
  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  networking.extraHosts =
    ''
      127.0.0.1 dev.jakubpawlowicz.com
    '';
}
