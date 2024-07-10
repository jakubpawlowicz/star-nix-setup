{
  networking.firewall.allowedTCPPortRanges = [
    {
      from = 4000;
      to = 4300;
    }
  ];

  networking.hostName = "nixos";

  networking.wireless.enable = true;
  networking.wireless.extraConfig = ''  
    ctrl_interface=DIR=/run/wpa_supplicant
    eapol_version=2
    ap_scan=1
    fast_reauth=1
    p2p_disabled=1
  '';
  networking.wireless.interfaces = [ "wlp8s0" ];
  networking.wireless.networks."WoofWoofWoof".pskRaw = "672cb89044a4fd409ccc8c98b9cf16ae02a32b6da9b08bba5df99b79402a84f9";
}

