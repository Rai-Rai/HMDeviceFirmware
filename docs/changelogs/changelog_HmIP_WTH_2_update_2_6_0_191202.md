﻿C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device: HmIP-WTH-2 - Homematic IP Wall Thermostat with Humidity Sensor

Company: eQ-3, Maiburger Str. 29, 26789 Leer, Germany


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


Version 2.4.008 - 2019-03-07
--------------------------------------------------------------

** Modification
    Parameter extension for installer solution.
     With the help of the new parameter "DISABLE_MSG_TO_AC" all transmissions to the
     central address are suppressed. Also to the status receiver address if this is
     the same as the central address.
    In "Duration" replace the unit "Days" by "10ms".
     Revision of the current duration, becaues a 16 bit value are not needed as unit
     "Days" anyway.

** Improvement
    Adjustment of the LCD start display.
     In the future only the application version major minor will be shown in the LCD
     start display. All further information can be found in the app or the ccu.


Version 2.0.002 - 2018-04-06
--------------------------------------------------------------

** Bugfix
   * Logic "Window open temperature" corrected in cooling mode
      In cooling mode, it is not advisable to change to the window open temperature, as
      a result, more cooling would have to be used.
   * Error during window open in cooling mode
      While window open in cool mode a new set temperature sent from the access point is
      not taken over.
   * Error when changing from winter to summer time.
      On the day of the time change, the time is increased by one hour every full hour
      after 2 o'clock.

** Modification
   * Function modification of Optimum-Start-Stop
      Change to Optimum Start, means that the comfort temperature should be reached at
      the desired point in time, the lowering temperature not.
   * Extension for pairing with a FALMOT


Version 1.8.000 - 2017-09-15
--------------------------------------------------------------

** Bugfix
   * Correction in Paging-Module HMOS-Library
      Catched erros which could occure after an OTAU update to a newer paging module.
   * Correction for the Optimum Start Stop function
      After activating the optimum start stop function it is now executed correctly.
 
** Modification
   * Parameter extension for installer solution.
      With the help of the new parameter "DISABLE_MSG_TO_AC" all transmissions to the
      central address are suppressed. Also to the status receiver address if this is the
      same as the central address.


Version 1.6.000 - 2017-07-21
--------------------------------------------------------------

** Bugfix
   * Expansion for inclusion condition.
      If parameter changes have been made to the device before the inclusion, the device
      can only be included if a factory reset has been performed on the device before.
   * Correction for set point temperature update after weekprogram configuration.
      If window open is detected (extern/intern) and during this time a new week program
      is transmitted to the device, the device updated the set point temperature after
      window close by using the new week program set point temperature.
   * Correction when changing from auto mode to manu mode.
      When changing from auto mode to manu mode and boost is active, boost is abort.
   * The date and time are cyclically synchronized with the access point.
      In order that  date and time are be synchron in system, the data is retrieved
      every 6 hours at Access point.
   * Behavior after aborting the factory reset.
      If the factory reset is aborted or not executed until the end, the device performs
      a reboot after the termination or after the timeout.

** Improvement
   * If the quick veto function is active, the remaining time is transferred in the
     status telegram.
   * Abort of Quick Veto by "Duration = 0".
      If Quick Veto is active, Quick Veto can be aborted by the radio command
      "Duration = 0". The device answers the radio telegram with an "Ack".


Version 1.4.004 - 2017-02-14
--------------------------------------------------------------

** Bugfix
   * Bug fixing in temperature week program
     If one daily temperature profiles consist of only one switch time point, the switch
     time point is skipped by midnight of the next day.
   * The Application_Sequence_Number for TIME_INFO_REQUEST is increment after sending.
   * If the device wait for incoming data, it don't responce to other requests.
   * "Sa" and "Su" symbols are displayed during the weekend profile setting.
   * Time profile "Sunday" is accepted.
   * Time profile can be read out.
   * RF-Data-Communication Improvement:
     New data packages will not be sent until the current data transmission has
     finished.

** New Feature
   * Implementation of Quick-Veto-Function (Default: inactive)


Version 1.2.002 - 2016-08-31
--------------------------------------------------------------

** Bugfix
   * The antenna symbol is not flashing when the communication does take place
     indirectly via a router.
   * If Party-Mode active, the device send in Pairing-Mode no Status-Messages to address
     0x000000.
   * If the FAL send a Direct Execution Command with Humidity limiter state "True", the
     device is not change from cooling mode to heating mode ( if cooling is activ ).
   * After troubleshooting with fix V1.2.001 it was no longer recognized that a MIOB is
     in the system.

** Modification
   * Party/Holiday function is distributed by FAL to link partner.


Version 1.0.013 - 2016-06-30
--------------------------------------------------------------

** First release


--- END OF FILE ---