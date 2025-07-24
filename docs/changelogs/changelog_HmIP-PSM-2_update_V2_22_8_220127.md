C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:		HmIP-PSM-2 - Homematic IP Pluggable Switch and Meter

Company:	eQ-3, Maiburger Str. 29, 26789 Leer, Germany


Version 1 (2 for pluggable).22.8 - 2022-01-25
--------------------------------------------------------------
** Bugfix
   * Incorrect output switching under some unfavourable timing and profile conditions


Version 1 (2 for pluggable).22.6 - 2022-01-24
-------------------------------------------------------------- 
** Improvement
   * Improved calibration of the internal rc oscillator (HmIP-FSM/HmIP-FSM16)
   
   
Version 1 (2 for pluggable).22.4 - 2022-01-14
--------------------------------------------------------------
** Bugfix
   * Error in emergency shutoff functionality

** Modification
   * activate power failure detection for all devices with powermeter, zero crossing switching or bistable relays


Version 1 (2 for pluggable).22.2 - 2021-12-09
--------------------------------------------------------------
** Bugfix
   * add separate handling of overcurrent shutoff to ensure that output is switched off
   * fixed error in emergency shutoff handling for devices with more than one channel
   
** Modification
   * update HMOS to 1.64.0
   
   
Version 1 (2 for pluggable).22.0 - 2021-10-08
--------------------------------------------------------------
** Bugfix
   * The time information telegram does not contain a note about the sommer / winter time change.
   * Timeout for first factory reset step is too long
   * Device sends RequestConfigUpdate if received a MacAck from a LinkPartner
   
** New Feature
   * Transmitting negative power (only measuring actuators)
   * Overcurrent detection and shutoff (HmIP-PSM-2/HmIP-PS-2)
   
     
--- END OF FILE ---