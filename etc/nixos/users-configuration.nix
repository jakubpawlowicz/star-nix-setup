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

  security.sudo.extraConfig =
    ''
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl start display-manager
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl restart display-manager
      %wheel ALL=NOPASSWD: /run/current-system/sw/bin/systemctl suspend
    '';
}
