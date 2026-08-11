{ config, ... }:
{
  imports = [
    ./tagging
    ./downloaders
    ./music
    ./videos
    ./games
  ];
}
