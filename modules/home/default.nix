{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./fonts.nix
    ./git.nix
    ./stylix.nix
    ./zsh.nix
  ];

  home = {
    username = "chinh4";
    homeDirectory = "/home/chinh4";
    stateVersion = "25.11";
    enableNixpkgsReleaseCheck = false;
  };

  home.packages = with pkgs;
    [
      # CLI Tools
      eza
      zoxide
      btop
      fd
      fzf
      ripgrep
      killall
      fastfetch
      tree
      ffmpeg-full
      unrar

      # Coding
      gcc
      rustup
      python3

      # Files
      p7zip

      # Internet
      yt-dlp
      wget
      curl
      rsync
      legcord

      # Nix Tools
      alejandra
    ]
    ++ lib.optionals stdenv.hostPlatform.isDarwin [
      coreutils
      wifi-password
      time
      neofetch
      stats
    ]
    ++ lib.optionals stdenv.hostPlatform.isLinux [
      proton-vpn
    ];

  programs = {
    bat.enable = true;
    git.enable = true;
    home-manager.enable = true;
  };
}
