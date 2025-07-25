﻿C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:   HmIP-eTRV-E-A - Homematic IP Radiator Thermostat – Evo, anthrazit

Company:  eQ-3, Maiburger Str. 29, 26789 Leer, Germany


Version 1.2.000 - 2022-06-01
--------------------------------------------------------------
* Bugfix
  * Correction for MANU set point temperature update after window open.
     If window open is detected (extern/intern) and during this time the device get
     the command "Eco-Mode", the device updated the set point temperature after window
     close and "Eco-Mode" off to the old set point temperature.
  * Valve remains closed after decalcification.
     After performing the decalcification run, the valve initially remained closed, and
     only after a new valve position was calculated was the valve opened again.
  * Setting vacation/party mode not possible.
     Due to the hot-fix in 1.0.12 the vacation/party mode could no longer be activated.


Version 1.0.012 - 2022-01-27
--------------------------------------------------------------
* Bugfix
  * Week program 2 and 3 not usable
     If the week program 2 or 3 was set, 5.0 °C was permanently set as the setpoint
     temperature. No matter what was previously configured in the profile.


Version 1.0.010 - earlier
--------------------------------------------------------------

First Release.


--- END OF FILE ---

