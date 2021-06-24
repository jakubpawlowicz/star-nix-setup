{ pkgs, ... }:

{
  programs.adb.enable = true;

  programs.sway.enable = true;
  programs.sway.extraPackages = [
    pkgs.alacritty
    pkgs.bemenu
    pkgs.swaybg
    pkgs.swayidle
    pkgs.swaylock
  ];
}
