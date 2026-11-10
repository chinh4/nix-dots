{...}: {
  imports = [
    ../apps.nix
    ../default.nix
  ];

  home = {
    enableNixpkgsReleaseCheck = false;
    homeDirectory = "/home/chinh4";
    stateVersion = "25.11";
    username = "chinh4";
  };

  programs.home-manager.enable = true;
}
