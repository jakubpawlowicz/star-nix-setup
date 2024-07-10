{ pkgs, ... }:

{
  users.extraUsers.jakub = {
    isNormalUser = true;
    extraGroups = ["adbusers" "networkmanager" "vboxusers" "wheel"];
    packages = [
      pkgs.chromium
      pkgs.firefox-wayland
      pkgs.helix
      pkgs.jq
      pkgs.libreoffice
      pkgs.signal-desktop
      pkgs.wl-clipboard
    ];
  };
  users.extraUsers.jakub.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH3Io58i8a6cRRvf9TtMHgRJe4rcIuOAwcbG52sJCAt2 jakub@nixos-mobile"
  ];

  security.sudo.extraConfig =
    ''
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl start display-manager
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl restart display-manager
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl suspend
    '';
}
