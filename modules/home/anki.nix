
{pkgs, ...}: {
  home.packages = with pkgs; [
    (anki.withAddons [
      ankiAddons.recolor
      ankiAddons.passfail2
      ankiAddons.anki-connect
      ankiAddons.review-heatmap
    ])

    python314Packages.tomlkit
  ];
}