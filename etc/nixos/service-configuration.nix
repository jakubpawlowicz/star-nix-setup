{
  services.cron.enable = true;

  services.dnsmasq.enable = true;
  services.dnsmasq.extraConfig =
    ''
      bind-interfaces
      listen-address=127.0.0.1
      address=/int/127.0.0.1
      address=/local/127.0.0.1
    '';
  services.dnsmasq.servers = [
    "1.1.1.1"
    "1.0.0.1"
    "2606:4700:4700::1111"
    "2606:4700:4700::1001"
  ];

  services.redshift.enable = true;

  services.xserver.enable = true;
  services.xserver.desktopManager.xterm.enable = false;
  services.xserver.displayManager.defaultSession = "none+i3";
  services.xserver.displayManager.lightdm.greeters.mini.enable = true;
  services.xserver.displayManager.lightdm.greeters.mini.extraConfig =
    ''
      [greeter]
      show-input-cursor = false
      show-password-label = false
      [greeter-theme]
      background-color = "#1b1d1e"
      background-image = ""
      window-color = "#d0d0d0"
    '';
  services.xserver.displayManager.lightdm.greeters.mini.user = "jakub";
  services.xserver.layout = "pl";
  services.xserver.windowManager.i3.enable = true;
}
