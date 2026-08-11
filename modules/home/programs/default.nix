{ config, ... }:
{
  imports = [
    ./browsers
    ./media
    ./comms
    ./commandline
    ./desktop
    ./managers
    ./productivity
  ];
}
