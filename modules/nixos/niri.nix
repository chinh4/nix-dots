{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    wofi
    waypaper
    swaybg
  ];

  programs.niri.enable = true;

  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;
}
