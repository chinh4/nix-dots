{pkgs, ...}: {
  programs.zsh.enable = true;
  users.users.chinh4 = {
    isNormalUser = true;
    description = "chinh4";
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.zsh;
  };
}
