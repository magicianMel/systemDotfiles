{ config, ... }:
{
  boot.loader = {
    timeout = 3;
    efi = {
      efiSysMountPoint = "/boot";
    };

    grub = {
      enable = true;
      efiSupport = true;
      efiInstallAsRemovable = true;
      devices = [ "nodev" ];
      useOSProber = true;
      extraEntriesBeforeNixOS = false;
      extraEntries = ''
        menuentry "reboot" {
          reboot
        }
        menuentry "shutdown" {
          halt
        }
      '';
    };
  };
}