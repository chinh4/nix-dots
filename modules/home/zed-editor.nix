{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    nil
  ];

  programs.zed-editor = {
    enable = true;
    extensions = [
      "nix"
      "git-firefly"
      "zig"
      "scss"
      "qml"
    ];
    userSettings = {
      languages = {
        Nix = {
          language_servers = [
            "nil"
            "!nixd"
          ];
          formatter = {
            external = {
              command = "nixfmt";
            };
          };
        };
      };
    };
  };
}
