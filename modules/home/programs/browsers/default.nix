{ config, ... }:
{
  imports = [
    ./firefox
    ./chromium
    ./tor
  ];
}
