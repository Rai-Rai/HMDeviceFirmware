C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:      HmIP-eTRV-2 - Homematic IP Radiator Thermostat

Company:     eQ-3, Maiburger Str. 29, 26789 Leer, Germany



Version 2.2.22 - 2024-05-03
--------------------------------------------------------------

** Bugfix
   * Communication problems with link partners if there is no cloud connection.
     If the cloud connection is lost, the Access point reports this to the device with
     a "Destination unreachable". This message causes a longer processing time in
     the device. During this time, the device cannot be reached by link partners.
     This can lead, for example, to window open/close messages not being received.



Version 2.2.20 - 2024-02-14
--------------------------------------------------------------

** Improvement
   * improve valve adaption noise immunity



Version 2.2.16 - 2022-10-06
--------------------------------------------------------------

** New Feature
   * First Release



--- END OF FILE ---
