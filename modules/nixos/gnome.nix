{pkgs, ...}: {
  services = {
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
    gnome = {
      core-apps.enable = false;
      core-developer-tools.enable = false;
      games.enable = false;
    };
  };

  environment = {
    gnome.excludePackages = with pkgs; [gnome-tour gnome-user-docs];
    systemPackages = with pkgs; [
      kdePackages.kate
      nautilus

      gnomeExtensions.appindicator
      gnomeExtensions.blur-my-shell
      gnomeExtensions.just-perfection
    ];
  };
}
