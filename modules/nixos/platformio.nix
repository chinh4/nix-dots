{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    platformio  
    avrdude
  ];

  services.udev.packages = with pkgs; [ 
    platformio-core.udev
    openocd
  ];

  programs.nix-ld = {
    enable = true;
    libraries = with pkgs; [avrdude];
  };
}