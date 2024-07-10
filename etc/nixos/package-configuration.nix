{ pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.aalib
    pkgs.exfat
    pkgs.gitMinimal
    pkgs.gnupg
    pkgs.htop
    pkgs.links2
    pkgs.lm_sensors
    pkgs.lsof
    pkgs.mutt
    pkgs.pinentry
    pkgs.openssl
    pkgs.sof-firmware
    pkgs.terminus_font
    pkgs.unzip
    pkgs.usbutils
    pkgs.vim
  ];
}
