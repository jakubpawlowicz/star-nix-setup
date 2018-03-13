{
  users.extraUsers.jakub = {
    isNormalUser = true;
    extraGroups = ["networkmanager" "vboxusers" "wheel"];
  };

  security.sudo.extraConfig =
    ''
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl start display-manager
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl restart display-manager
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl start openvpn-client
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl stop openvpn-client
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl restart openvpn-client
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl suspend
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/ifconfig enp10s0 down
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/ifconfig enp10s0 up
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/cat /sys/kernel/debug/dri/0/radeon_pm_info
    '';
}
