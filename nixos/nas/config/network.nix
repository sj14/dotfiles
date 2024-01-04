{

  networking.hostName = "nas"; # Define your hostname.
  
  networking.networkmanager.enable = true;

  networking.interfaces.enp1s0.wakeOnLan.enable = true;

}
