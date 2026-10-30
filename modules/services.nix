{ pkgs, ... }:
{
  services.nix-daemon = {
    enable = true;
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      trusted-users = [ "root" "@wheel" ];
    };
  };

  services = {
    sysklogd.enable = true;
    mdevd.enable = true;
    getty.enable = true;
  };

  environment.systemPackages = with pkgs; [
    iw
    dropbear
  ];
}
