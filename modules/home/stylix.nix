{pkgs, ...}: {
  stylix = {
    enable = true;
    autoEnable = true;
    polarity = "dark";

    icons = {
      enable = true;
      package = pkgs.morewaita-icon-theme;
      dark = "MoreWaita";
      light = "MoreWaita";
    };

    targets = {
      rofi.enable = false;
      spicetify.enable = false;
      qt.platform = "qtct";
    };
  };
}
