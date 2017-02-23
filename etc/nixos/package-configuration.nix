{ pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = [
    pkgs.ansible2
    pkgs.gitMinimal
    pkgs.gnupg
    pkgs.htop
    pkgs.i3
    pkgs.nodejs
    pkgs.python35Packages.docker_compose
    pkgs.vim
  ];
}
