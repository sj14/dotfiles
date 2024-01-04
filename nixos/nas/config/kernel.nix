{ pkgs, ... }:

{
  
  boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.kernelParams = [
    "pcie_aspm=force"
    "pcie_aspm.policy=powersave"
  ];

}
