{ pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  fonts.enableFontDir = true;
  fonts.fonts = with pkgs; [
    terminus_font
  ];

  i18n.consoleFont = "${pkgs.terminus_font}/share/consolefonts/ter-c16n.psf.gz";

  system.stateVersion = "19.09";

  time.timeZone = "Europe/Warsaw";
}
