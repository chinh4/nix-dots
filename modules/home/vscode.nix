{pkgs, ...}: {
  home.packages = with pkgs; [
    vscode
  ];

  programs = {
    direnv = {
      enable = true;
    };
  };
}
