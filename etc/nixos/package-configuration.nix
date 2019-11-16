{ pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.aalib
    pkgs.exfat
    pkgs.gitMinimal
    pkgs.gnupg
    pkgs.htop
    pkgs.links
    pkgs.lm_sensors
    pkgs.lsof
    pkgs.mutt
    pkgs.openssl
    pkgs.sway
    pkgs.swaybg
    pkgs.swaylock
    pkgs.terminus_font
    pkgs.unzip
    pkgs.urlview
    pkgs.usbutils
    pkgs.vim
  ];
  
  nixpkgs.config.allowUnfree = true;
}
