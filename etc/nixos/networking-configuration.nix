{
  networking.hostName = "nixos";

  networking.wireless.enable = true;
  networking.wireless.extraConfig = ''  
    ctrl_interface=DIR=/run/wpa_supplicant
    eapol_version=2
    ap_scan=1
    fast_reauth=1
    p2p_disabled=1
  '';
  networking.wireless.networks."Fuuulacze".pskRaw = "0475a560cc49747317b46c687b7a299fd76cd9b8806e94c0a3bf6be406699409";
}

