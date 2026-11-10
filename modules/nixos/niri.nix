{pkgs, ...}: {
  environment.systemPackages = with pkgs; [ 
    xwayland-satellite
  ];

  programs.niri.enable = true;

  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;
}
