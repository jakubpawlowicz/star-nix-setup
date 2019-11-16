{ pkgs, ... }:

{
  programs.sway.enable = true;
  programs.sway.extraPackages = [
    pkgs.swaybg
    pkgs.swayidle
    pkgs.swaylock
  ];
}
