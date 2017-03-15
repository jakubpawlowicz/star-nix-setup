{ pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.ansible2
    pkgs.chromium
    pkgs.dosbox
    pkgs.firefox
    pkgs.gimp
    pkgs.gitMinimal
    pkgs.gnupg
    pkgs.htop
    pkgs.i3
    pkgs.ledger
    pkgs.links
    pkgs.lsof
    pkgs.mutt
    pkgs.nodejs
    pkgs.openssl_1_1_0
    pkgs.optipng
    pkgs.python35Packages.docker_compose
    pkgs.sublime3
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

  nixpkgs.config.allowUnfree = true;
}
