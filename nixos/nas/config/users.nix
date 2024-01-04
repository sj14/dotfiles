{ pkgs, ... }:

{

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.simon = {
    isNormalUser = true;
    description = "Simon";
    extraGroups = [
      "networkmanager" 
      "wheel"
    ];
    packages = with pkgs; [];
    openssh.authorizedKeys.keys = [
      "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBAYYLaWiw3hNwOD2cKTHe/p15vxrXc2d9f+ssLd+KvHkxjFoSX56nLf4h066i6qc5WEOjVeTi/k6/npEplR8vo8= common@secretive.Simons-MacBook-Pro.local"
   ];
  };

}
