self: super:

let
  callPackage = self.callPackage;
in
{
  libprelude = callPackage ./development/libraries/libprelude {  };
  suricata   = callPackage ./applications/networking/ids/suricata {  };
  suricata-update = callPackage ./applications/networking/ids/suricata-update { };
}
