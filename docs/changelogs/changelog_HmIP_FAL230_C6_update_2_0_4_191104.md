﻿C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device: HmIP-FAL230-C6 - Homematic IP Floor Heating Actuator – 6 channels, 230 V

Company: eQ-3, Maiburger Str. 29, 26789 Leer, Germany


Version 2.0.004 - 2019-04-01
--------------------------------------------------------------

** Bugfix
   * Correktion of an error when changing from winter to summer time.
      On the day of the time change, the time is increased by one hour every full hour
      after 2 o'clock.
   * Correction of the valve protection function.
      The "On_TIME" parameter, i.e. the values for the "Valve protection function
      duration" were loaded incorrectly, which meant that the function was not executed
      at all.
   * Correction of parameter change of lead up time and lead follow time.
      Parameter change of lead up time and lead follow time for boiler and for pumpe
      control are only adopted after device restart.
   * Correction in status info frame by valve type normally open.
      Status info bit for valve is inverted if the valve type is changed to normally
      open.
   * It was possible to link two partners to channel "Output MIOB Boiler" but only one
     should be possible.
   * Wrong RSSI-Level in status info package
      RSSI level in cyclic status info must always be 0x80.

** Improvement
   * Adjustment to switch off the local pump.
      Depending on the system, the pump is switched off after each PWM cycle. However,
      this only makes sense if the switch-off is carried out for a longer period of
      time. This is now guaranteed, if a short switch-off time is determined, the
      switch-off is not carried out.

** New Feature
   * Channel extension for change-over function.
      Through the channel extension, it should be possible to switch between heating and
      cooling via the MIOB without the pump or boiler channel being connected.


Version 1.8.006 - 2018-03-16
--------------------------------------------------------------

** Bugfix
   * Expansion for inclusion condition.
      If parameter changes have been made to the device before the inclusion, the device
      can only be included if a factory reset has been performed on the device before.
   * Expansion for inclusion condition.
      Activation of the pump function on heating zone 1 directly at the FAL is blocked
      after inclusion.
   * Function modification during two-point control.
      During the two-point control (startup sequence), the device do observe the
      parameter values "COOLING_DISABLE" and "HEATING_DISABLE".
   * Correction in Paging-Module HMOS-Library.
      Catched erros which could occure after an OTAU update to a newer
      paging module.
   * Correction for determining the heating or cooling mode after a power failure
      In order to execute the right set heating or cooling mode after a power failure,
      the time request in inclusion mode is not limited to the request at the access
      point, if this is not available, a time request is send to a link partner
      requests and therefore indirect also the correct operating mode.
   * Correction when switching between load balancing and load collection during
     operation.
      If load balancing and collection were changed during operation, the load
      collection was not carried out correctly.
   * Correction for switching off the local pump relay.
      If the local pump function is deactivated, the pump relay is deactivated.
   * Correction for determining the heating or cooling mode after a power failure in
     connection with a MIOB.
      After a power failure, the DEC of the MIOB must be evaluated separately so that
      the linked wall thermostats are not inadvertently switched from cooling to 
      heating.

** New Feature
   * Parameter extension for installer solution.
      With the help of the new parameter "DISABLE_MSG_TO_AC" all transmissions to the
      central address are suppressed. Also to the status receiver address if this is the
      same as the central address.

** Modification
   * Extension for pairing with a FALMOT


Version 1.6.002 - 2017-01-31
--------------------------------------------------------------

** Bugfix
   * Improvement of data communication.
      During data communication with a partner, it is possible to receive data from a
      second partner.

** Modification
   * Pumps and boiler channel are separated for inclusion mode into two channel in order
     to separate the pumps and boiler control. This solution allows the separate
     adjustment of pumps and boiler delay times.

** Improvement
   * In the case of a configuration change of the valve type, the channel output control
     is updated immediately.


Version 1.4.002 - 2016-10-20
--------------------------------------------------------------

** Bugfix
   * First long system button press for Factory Reset was 500 ms too short.
   * Global pump protection function (in conjunction with the MIOB) is working now.
   * Diagnostic channel test function can always be deactivated as desired.
   * The "Humidity Limiter" flag in the Status-Message is set, if humidity limit is
     reached.
   * In "Inclusion Mode" date and time are still requested, even if it is not needed.
     The reason is the "Date Time Unknown" flag in the Status-Message, this could
     irritate the customer.


Version 1.2.001 - 2016-08-23
--------------------------------------------------------------

** Bugfix
   * The parameter "ONDELAY_TIME" and "OFFDELAY_TIME" of the pump are set properly.
   * If humidity limit has been exceeded and the function is disabled, this is
     communicated to the Wall Thermostat.
   * Heating Clock Funktion is operate as specified.


Version 1.2.000 - 2016-08-10
--------------------------------------------------------------

First Release.

--- END OF FILE ---

