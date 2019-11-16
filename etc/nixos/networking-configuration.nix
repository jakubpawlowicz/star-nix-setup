{
  networking.enableIPv6 = false;
  networking.hostName = "nixos-mobile";
  networking.nameservers = [
    "1.0.0.1"
    "2606:4700:4700::1111"
    "2606:4700:4700::1001"
  ];
}
