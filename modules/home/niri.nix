{
  config,
  pkgs,
  ...
}: {
  imports = [./amane.nix];

  home = {
    file = {
      ".config/niri/colors.kdl".text = with config.lib.stylix.colors; ''
        layout {
          focus-ring {
            active-color "${base05}"
            inactive-color "${base01}"
            urgent-color "${base09}"
          }

          border {
              active-color "${base05}"
              inactive-color "${base01}"
              urgent-color "${base09}"
          }

          shadow {
            color "${base00}"
          }
        }
      '';
    };
  };
}
