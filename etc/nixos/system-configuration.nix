{ pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  i18n.consoleFont = "${pkgs.terminus_font}/share/consolefonts/ter-128n.psf.gz";

  system.stateVersion = "16.09";

  time.timeZone = "Europe/Warsaw";
}
