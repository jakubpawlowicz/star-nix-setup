{ pkgs, ... }:

{
  boot.extraModprobeConfig =
    ''
      options snd_hda_intel enable=0,1
    '';
  boot.kernelModules = [
    "kvm-amd"
  ];
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelParams = [
    "hid_apple.fnmode=0"
    "nomodeset"
  ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  console.font = "${pkgs.terminus_font}/share/consolefonts/ter-128n.psf.gz";

  fonts.fontDir.enable = true;
  fonts.fonts = with pkgs; [
    terminus_font
  ];

  location.latitude = 50.0;
  location.longitude = 20.0;

  nix.systemFeatures = [
    "kvm"
  ];

  system.stateVersion = "19.03";

  time.timeZone = "Europe/Warsaw";
}
