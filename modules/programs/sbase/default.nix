{ config, lib, pkgs, ... }:

let
  cfg = config.programs.sbase;
  sbasePackage = pkgs.callPackage ./package.nix { };
in
{
  options.programs.sbase = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Whether to enable sbase unix tools.";
    };

    package = lib.mkOption {
      type = lib.types.package;
      default = sbasePackage;
      defaultText = lib.literalExpression "pkgs.callPackage ./package.nix {}";
      description = "The package to use for `sbase`.";
    };
  };

  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
