{ config, ... }:
{
  imports = [
    ./browsers
    ./media
    ./comms
    ./commandline
    ./desktop
    ./fileManagers
    ./productivity
  ];
}
