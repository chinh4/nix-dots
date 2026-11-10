{...}: {
  imports = [
    ./boot.nix
    ./locale.nix
    ./networking.nix
    ./packages.nix
    ./services.nix
    ./users.nix
  ];

  nix = {
    distributedBuilds = true;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 6d";
    };
    optimise = {
      automatic = true;
    };
    settings = {
      auto-optimise-store = true;
      builders-use-substitutes = true;
      trusted-users = [
        "root"
        "chinh4"
        "@wheel"
      ];
    };
  };

  ### TEMP!!!
  nixpkgs.config.permittedInsecurePackages = [
    "python3.14-pybars3-0.9.7"
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
}
