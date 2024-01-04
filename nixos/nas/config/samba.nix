{
  # https://nixos.wiki/wiki/Samba#Samba_Server
  # https://gist.github.com/vy-let/a030c1079f09ecae4135aebf1e121ea6

  networking.firewall.allowPing = true;

  services.samba-wsdd.enable = true; # make shares visible for windows 10 clients
  services.samba-wsdd.openFirewall = true;
  services.samba.openFirewall = true;

  services.samba = {
    enable = true;
    securityType = "user";
    extraConfig = ''
      #workgroup = WORKGROUP
      #server string = smbnix
      #netbios name = smbnix
      security = user 
      #use sendfile = yes
      #max protocol = smb2
      # note: localhost is the ipv6 localhost ::1
      #hosts allow = 192.168.0. 127.0.0.1 localhost
      #hosts deny = 0.0.0.0/0
      guest account = nobody
      map to guest = bad user
    '';
    shares = {
      Multimedia = {
        path = "/mnt/data/Multimedia";
        browseable = "yes";
        "read only" = "no";
        "guest ok" = "yes";
        "create mask" = "0644";
        "directory mask" = "0755";
      };
      Software = {
        path = "/mnt/data/Software";
        browseable = "yes";
        "read only" = "no";
        "guest ok" = "yes";
        "create mask" = "0644";
        "directory mask" = "0755";
      };
      Private = {
        path = "/mnt/data/Private";
        browseable = "yes";
        "read only" = "no";
        "guest ok" = "no";
        "create mask" = "0644";
        "directory mask" = "0755";
      };
    };
  };

  services.avahi = {
    enable = true;
    nssmdns = true;
    publish = {
      enable = true;
      addresses = true;
      domain = true;
      hinfo = true;
      userServices = true;
      workstation = true;
    };
    extraServiceFiles = {
      smb = ''
        <?xml version="1.0" standalone='no'?><!--*-nxml-*-->
        <!DOCTYPE service-group SYSTEM "avahi-service.dtd">
        <service-group>
          <name replace-wildcards="yes">%h</name>
          <service>
            <type>_smb._tcp</type>
            <port>445</port>
          </service>
        </service-group>
      '';
    };
  };

}
