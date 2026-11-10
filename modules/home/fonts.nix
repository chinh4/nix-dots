{pkgs, ...}: {
   fonts = {
     fontconfig.enable = true;
  };

  home.packages = with pkgs; [
    rPackages.fontawesome
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-color-emoji
    nerd-fonts.fantasque-sans-mono
  ];
}
