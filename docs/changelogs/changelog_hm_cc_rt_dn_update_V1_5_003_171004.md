Achtung! Bitte verwenden Sie die Firmware-Datei nur in Verbindung mit der aktuellsten CCU2/3 Version.

Please note: Only use the firmware file in connection with the latest CCU2/3 version.

Changelog:

Version 1.5.003 - 17/10/04
--------------------------------------------------------------
** Modification / Improvement
  * Firmware modification for production change: Mounting the DR1 by robot instead by worker

Version 1.5.002 - 16/09/05
--------------------------------------------------------------
** Modification / Improvement
  * After the incoming Data "CCU-Command" and "Configuration" the Device change for 5 s from WOR to RX-Mode.

Version 1.5.001 - 15/12/01
--------------------------------------------------------------
** Modification / Improvement
  * Heating-Control in connection with a WTH shows occasionally two-point behavior -> fixed

Version 1.4.002 - 15/05/06
--------------------------------------------------------------
** Bug
  * Bugfix at direkt pairing. Sometimes the parameter configuration after pairing goes wrong.

Version 1.4.001 - 14/10/20
--------------------------------------------------------------
** Bug
  * Modification the radio data interpretation function, if check for CONFIG_SERIALNUMBER it is also necessary to 
    check the frame typ for FRAME_CONFIGURATION.
  * Modification the direct link button-switch profile. 

Version 1.3.001 - 14/04/24
--------------------------------------------------------------
** Bug
  * Change in config_rt(...,...), parameter configuration is start at parameterposition 20.
    The weekly program transfer to the partner was incorrect if the first timestep > 21:15 o'clock
  * If party-mode bring into action, always the long status-message is send out instead of the 
    short status-message. The party-temperature is add as last byte at the long status-message.

Version 1.2.007 - 13/12/02
--------------------------------------------------------------
** Bug
  * If all shutter-contacts cleared from device and window-open-temperature is active, temperature return from 
    window-open-temperature to old temperature.
  * Internal window-open detection, send to partners.
  * Central-Order "Boost", "Comfort", "Lowering", "Change Temperature" still running, if Party-Pre-Stage is active.
  
** ChangeRequest  
  * The operation mode still shows in lcd if a thermal control is known.
  
Version 1.1.001 - 13/09/16
--------------------------------------------------------------
** Bug
  * Correction at takeover the actualtemperature and the settemperature, high-byte shift was not correct.
  * Correction at takeover ccu-radio-order, if internal window-open is detected, it has to reset.
  * Correction by the radio synchronization, if a thermal control is known, the device must synchronize to the
    radio-datapacket actual/set-temperature.