{ pkgs, ... }:

{
    powerManagement.cpuFreqGovernor = "powersave";

    powerManagement.powertop.enable = true;

    powerManagement.powerUpCommands = ''
        ${pkgs.hdparm}/sbin/hdparm -S 180 /dev/disk/by-id/ata-WDC_WD20EARX-00PASB0_WD-WCAZAA353143
    '';
}
