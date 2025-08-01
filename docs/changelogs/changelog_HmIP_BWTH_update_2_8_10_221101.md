﻿C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version
of the CCUx!

Device: HmIP-BWTH - Homematic IP Wall Thermostat with switching output

Company: eQ-3, Maiburger Str. 29, 26789 Leer, Germany


Version 2.8.010 - 2022-10-10
--------------------------------------------------------------

** Bugfix
   * After reinclusion, partly cyclic data telegrams for eTRV, actuator and FAL are not
     sent.


Version 2.8.008 - 2022-09-06
--------------------------------------------------------------

** Bugfix
   * Device does not respond to ALL_TRIPLE_BURST_LISTENING_DEVICES.
      A generally valid message to the address ALL_TRIPLE_BURST_LISTENING_DEVICES is
      supported now.
   * DRIx window contacts of a room cannot form the necessary AND connection.
      If a window contact with several channels is linked as partner, window-closed was
      already detected if only one channel of the window contact reported window-closed.
   * Display error when switching between temperature and humidity.
      Every 60 seconds when updating the display, humidity is very briefly displayed,
      but then immediately jumps back to the actual temperature.
   * Whenever connection to link partner FAL/MIOB/WHS2 is checked, the led is blinking.
      If the wall thermostat is linked to a FAL/MIOB/WHS2, the link connection is
      checked every 50 minutes as standard. This results in a flashing LED on the
      thermostat. Especially if the connection is made via a router, this flashing could
      take longer. This should not be the case as it will cause confusion for customers.
      The LED should only be triggered when the customer makes manual changes.

** New Feature
   * Extension by boiler and pump channel for direct control via Multi IO Box and Switch
     Actuator for heatings system.
      The expansion allows the heating system to be controlled even if the central unit
      fails. The direct links ensure reliable operation even in offline mode.
   * Switchover for use either as thermostat or as hygrometer (2-point control) with
     effect on the actor channel.
      Via the parameter setting it is now possible to switch the actuator channel 5
      depending on the humidity.

** Improvement
   * Parameters for switching between PWM and 2-point-control for floor heating control.
      It is now possible to select via a parameter whether the control of the underfloor
      heating is carried out using the previously used PWM control or whether the
      control is realised with a 2-point control.
   * Whenever connection to link partner FAL is checked, the led is blinking.
      If the wall thermostat is linked to a FAL or FALMOT, the link connection is
      checked every 50 minutes as standard. This results in a flashing LED on the
      thermostat. Especially if the connection is made via a router, this flashing could
      take longer. This should not be the case as it will cause confusion for customers.
      The LED should only be triggered when the customer makes manual changes.
   * The time information telegram does not contain a note about the summer / winter
     time change.
      So it was possible that a time request to the access point in the period where the
      changeover from summer to winter time takes place could lead to a double
      changeover.
   * Automatic switching between heating and cooling at the two-point control for
     actuator channel 5.
      Up to now, the parameter "Art der Zweipunktregelung" was used to specify whether
      the two-point control for the actuator channel 5 should heat or cool. This
      parameter has now been extended by the value heating and cooling. If this value is
      now selected, the two-point control is automatically changed to heating or
      cooling.
   * Smart RX FAL cyclic packet reduction
      To reduce the radio load, a check is made before each cyclic data telegram is sent
      to the FAL or FALMOT to determine whether it actually has to be sent. If there has
      been no change in the mode, the actual temperature, the humidity and the set
      temperature, the packet does not have to be sent every cycle.


Version 2.6.000 - 2019-09-04
--------------------------------------------------------------

** New Feature
   * Improvement for data communication.
      If possible the device send multicasts only to PARTNER_ALL_WIRED_DEVICES instead
      of to PARTNER_ALL_DEVICES.

** Improvement
   * Immediate evaluation of temperature change for the two-point-control.
      Temperature changes triggered by the central unit or a window contact, are
      forwarded directly to the switching actuators for the two-point-control.


Version 2.4.006 - 2019-01-11
--------------------------------------------------------------

** Modification
    In "Duration" replace the unit "Days" by "10ms".
     Revision of the current duration, becaues a 16 bit value are not needed as unit
     "Days" anyway.

** Improvement
    Adjustment of the LCD start display
     In the future only the application version major minor will be shown in the LCD
     start display. All further information can be found in the app or the ccu.


Version 1.2.004 - 2017-11-23
--------------------------------------------------------------

** Bugfix
   * Logic "Window open temperature" corrected in cooling mode
      In cooling mode, it is not advisable to change to the window open temperature, as
      a result, more cooling would have to be used.
   * Correction in Paging-Module HMOS-Library
      Catched erros which could occure after an OTAU update to a newer paging module.
   * Correction for the Optimum Start Stop function
      After activating the optimum start stop function it is now executed correctly.
   * Antenna symbol synchronization in the display.
     If the date and time can be requested by the access point, this is a sign that the
     radio communication is in order. The flashing of the antenna symbol should then be
     canceled.
   * Correction for set point temperature update after weekprogram configuration.
      If window open is detected (extern/intern) and during this time a new week program
      is transmitted to the device, the device updated the set point temperature after
      window close by using the new week program set point temperature.
   * Correction when changing from auto mode to manu mode.
      When changing from auto mode to manu mode and boost is active, boost is abort.
   * Function modification after removing internal link between channel 8 and channel 10.
      When removing the internal link between channel 8 and channel 10 by the access
      point, the relay should be deactivated.
   * Behavior after aborting the factory reset.
      If the factory reset is aborted or not executed until the end, the device performs
      a reboot after the termination or after the timeout.
   * Abort of Quick Veto by "Duration = 0".
      If Quick Veto is active, Quick Veto can be aborted by the radio command
      "Duration = 0". The device answers the radio telegram with an "Ack".
   * Error when changing from winter to summer time.
       On the day of the time change, the time is increased by one hour every full hour
       after 2 o'clock.

** New Feature
   * Parameter extension for installer solution.
      With the help of the new parameter "DISABLE_MSG_TO_AC" all transmissions to the
      central address are suppressed. Also to the status receiver address if this is the
      same as the central address.

** Modification
   * Function modification of Optimum-Start-Stop
      Change to Optimum Start, means that the comfort temperature should be reached at
      the desired point in time, the lowering temperature not.
   * Function modification during two-point control.
      During the two-point control (startup sequence), the device do observe the
      parameter values "COOLING_DISABLE" and "HEATING_DISABLE".

** Improvement
   * Improvement for the display.
      When changing the temperature offset from the App the LCD display should be updated
      directly.
   * Expansion for inclusion condition.
      If parameter changes have been made to the device before the inclusion, the device
      can only be included if a factory reset has been performed on the device before.
   * Extension for the Quick Veto Function.
      If the quick veto function is active, the remaining time is transferred in the
      status telegram.


Version 1.0.011 - 2017-05-12
--------------------------------------------------------------

** First release


--- END OF FILE ---