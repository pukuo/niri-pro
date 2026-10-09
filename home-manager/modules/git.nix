{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "guolisen";
        email = "guolisen@outlook.it";
      };

      init.defaultBranch = "main";
      push.autoSetupRemote = true;
      url."git@github.com:".insteadOf = "https://github.com/";

      alias = {
        st = "status";
        co = "checkout";
        br = "branch";
        ci = "commit";
        lg = "log --oneline --graph --decorate";
      };
    };
  };
}
