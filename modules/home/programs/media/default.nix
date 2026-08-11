{ config, ... }:
{
  imports = [
    ./tagging
    ./downloaders
    ./audio
    ./videos
    ./games
  ];
}
