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
    pkgs.mutt
    pkgs.nodejs
    pkgs.python35Packages.docker_compose
    pkgs.sublime3
    pkgs.terminus_font
    pkgs.usbutils
    pkgs.vim
    pkgs.xclip
    pkgs.xlsfonts
    pkgs.xorg.xbacklight
  ];

  nixpkgs.config.allowUnfree = true;
}
