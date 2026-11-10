{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs;
    [
    ]
    ++ lib.optionals stdenv.hostPlatform.isLinux [
      inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    ];
}
