{ pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.aalib
    pkgs.exfat
    pkgs.gitMinimal
    pkgs.gnupg
    pkgs.htop
    pkgs.i3
    pkgs.i3status
    pkgs.links
    pkgs.lm_sensors
    pkgs.lsof
    pkgs.mutt
    pkgs.openssl
    pkgs.terminus_font
    pkgs.unzip
    pkgs.urlview
    pkgs.usbutils
    pkgs.vim
    pkgs.xclip
    pkgs.xlockmore
    pkgs.xlsfonts
    pkgs.xorg.xbacklight
    pkgs.xorg.xmodmap
  ];

  
}
