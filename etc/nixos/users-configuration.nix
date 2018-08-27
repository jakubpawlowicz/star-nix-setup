{
  users.extraUsers.jakub = {
    isNormalUser = true;
    extraGroups = ["networkmanager" "vboxusers" "wheel"];
  };

  security.sudo.extraConfig =
    ''
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl start display-manager
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl restart display-manager
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl suspend
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/ifconfig enp37s0 down
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/ifconfig enp37s0 up
    '';
}
