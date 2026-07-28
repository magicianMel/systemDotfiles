{ config, ... }:

{
  imports = [
    ./system
    ./ddwManagers
    ./gamePackages
    ./cliTools
  ];
}
