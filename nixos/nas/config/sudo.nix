{

  security.sudo.extraRules = [
    {
      users = [ "simon" ];
      commands = [ 
        { command = "/run/current-system/sw/bin/reboot";   options = [ "NOPASSWD" ]; } 
        { command = "/run/current-system/sw/bin/poweroff"; options = [ "NOPASSWD" ]; } 
      ];
    }
  ];

}
