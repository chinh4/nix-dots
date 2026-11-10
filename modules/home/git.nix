{...}: {
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "chinh4thepro";
        email = "chinh4thepro@gmail.com";
      };
      color = {
        ui = "auto";
      };
      push = {
        autoSetupRemote = true;
      };
      pull = {
        rebase = true;
      };
      checkout = {
        workers = 8;
      };
    };
  };
}
