{pkgs, ...}: {
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      addons = with pkgs; [
        fcitx5-bamboo
        fcitx5-gtk
        fcitx5-mozc
        qt6Packages.fcitx5-with-addons
      ];
      waylandFrontend = true;
    };
  };
}
