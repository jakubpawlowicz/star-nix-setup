{
  networking.firewall.allowedTCPPortRanges = [
    {
      from = 4000;
      to = 4200;
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
  networking.wireless.networks."Fulacze".pskRaw = "1a51fc348192d9200889fd27cdb4cb5e57fad0ea1095d89bd7cabefed6867814";
}

