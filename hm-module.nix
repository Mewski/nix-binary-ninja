{ config, lib, ... }:
let
  cfg = config.programs.binary-ninja;
in
{
  imports = [
    ./options.nix
  ];

  config = lib.mkIf cfg.enable {
    home.packages = [ cfg.package ];
  };
}
