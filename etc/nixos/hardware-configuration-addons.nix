{
  hardware.cpu.amd.updateMicrocode = true;

  hardware.rasdaemon.enable = true;

  nix.settings.max-jobs = 8;

  sound.enable = true;
  sound.extraConfig = ''
    defaults.pcm.!card 1
  '';
}
