{ pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.ansible2
    pkgs.firefox
    pkgs.gitMinimal
    pkgs.gnupg
    pkgs.htop
    pkgs.i3
    pkgs.links
    pkgs.lsof
    pkgs.mutt
    pkgs.nodejs
    pkgs.openssl_1_1_0
    pkgs.python35Packages.docker_compose
    pkgs.sublime3
    pkgs.terminus_font
    pkgs.unzip
    pkgs.urlview
    pkgs.usbutils
    pkgs.vim
    pkgs.xclip
    pkgs.xlsfonts
    pkgs.xorg.xbacklight
    pkgs.xorg.xmodmap
  ];

  nixpkgs.config.allowUnfree = true;
}
