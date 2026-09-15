{ config, lib, pkgs, ... }:
{
  # commented due to CTH-670 input being supported better through the base linux "driver"
 # hardware.opentabletdriver.enable = true;
 # hardware.opentabletdriver.daemon.enable = true;
 # hardware.uinput.enable = true;
 # boot.kernelModules = [ "uinput" ];
}
