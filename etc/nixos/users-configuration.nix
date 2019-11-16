{ pkgs, ... }:

{
  users.users.jakub.isNormalUser = true;
  users.users.jakub.home = "/home/jakub";
  users.users.jakub.extraGroups = [
    "networkmanager"
    "wheel"
  ];
  users.users.jakub.packages = [
    pkgs.alacritty
    pkgs.firefox-wayland
    pkgs.sublime3
    pkgs.wl-clipboard
  ];
}

