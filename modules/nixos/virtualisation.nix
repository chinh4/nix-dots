{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    qemu_full
    OVMFFull
  ];

  programs.virt-manager.enable = true;
  users.users.chinh4.extraGroups = ["libvirtd"];
  virtualisation.libvirtd.enable = true;
}
