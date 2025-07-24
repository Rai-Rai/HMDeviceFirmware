C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:      HmIP-DRDI3 - Homematic IP Dimmaktor fÃ¼r Hutschienenmontage â 3-fach

Company:     eQ-3, Maiburger Str. 29, 26789 Leer, Germany


Version 1.4.8 - 2022-03-23
--------------------------------------------------------------

** Bugfix
   * General improvements - Code optimisation



Version 1.4.6 - 2021-07-23
--------------------------------------------------------------

** Improvement
   * Rework of update process



Version 1.4.4 - 2021-05-06
--------------------------------------------------------------

** Bugfix
   * Wrong lock timeout handling for event counter
   * Wrong order in the list 1 parameters of the real channel in dimmer actuators
   * Dimming direction change if other input is press
   * Error if all 3 Outputs are linked to 1 RemoteControl
   * DEC ExecutionStart with level 0 is set channel to 100%
   * Error in the dst handling (changeover) if dst is given by SHC

** Improvement
   * Adjustment behavior at "Channel inactive"



Version 1.4.0 - 2021-02-18
--------------------------------------------------------------

** Bugfix
   * A long keypress release leads to longer run time than the previous ones if the driving time is shorter than the long keypress repetition time
   * Error on the display and in the status frame if mains power is missing, although the channel state is inactive
   * In a switching group, only the first channels are switched on
   * After a long button press, one channel will sporadically remain permanently supplied with 230 volts.
   * Wrong handling in the update module if channels are not active 
   * No status frame if a level change (not 0) is done and the start level is != 0

** New Feature
   * Switch-off ramp via central programs or automation.
   * Implement channel parameter for setting the Dimm-Min-Level.

** Improvement
   * The time information telegram does not contain a note about the sommer / winter time change.



Version 1.2.2 - 2020-02-14
--------------------------------------------------------------

** Bugfix
   * HmIP-DRDI3 handles long keypresse wrong, if more than one channel is dimming



--- END OF FILE ---
