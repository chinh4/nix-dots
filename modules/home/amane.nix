{inputs, pkgs, ...}: {
  home.packages = [
    inputs.amane.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
