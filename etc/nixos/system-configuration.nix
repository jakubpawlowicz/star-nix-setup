{ pkgs, ... }:

{
  boot.extraModprobeConfig =
    ''
      options snd_hda_intel enable=0,1
    '';
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  fonts.enableFontDir = true;
  fonts.fonts = with pkgs; [
    terminus_font
  ];

  hardware.bluetooth.enable = true;

  i18n.consoleFont = "${pkgs.terminus_font}/share/consolefonts/ter-128n.psf.gz";

  system.stateVersion = "16.09";

  time.timeZone = "Europe/Warsaw";
}
