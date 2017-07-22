{
  users.extraUsers.jakub = {
    isNormalUser = true;
    extraGroups = ["docker" "networkmanager" "vboxusers" "wheel"];
  };

  security.sudo.extraConfig =
    ''
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl start display-manager
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl restart display-manager
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl restart openvpn-client
    '';
}
