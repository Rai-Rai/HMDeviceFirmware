C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:      HmIP-WHS2 - Homematic IP Switch Actuator for heating systems â 2 channels

Company:     eQ-3, Maiburger Str. 29, 26789 Leer, Germany


C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:      HmIP-WHS2 - Homematic IP Switch Actuator for heating systems â 2 channels

Company:     eQ-3, Maiburger Str. 29, 26789 Leer, Germany

Version 2.2.000 - 2023-11-09
--------------------------------------------------------------

** Bugfix
   * Wrong evaluation of the event counter with multiple links between sensor and actuator
   * For heat demand control on the VirtB channels, a level command should also be taken into account in addition to a conditional switch command.
   
Version 2.0.010 - 2022-05-23
--------------------------------------------------------------

** Bugfix
   * Status info cannot request from virtuel channels
   * Sorting of status info container wrong


Version 2.0.004 - 2022-03-31
--------------------------------------------------------------

** Bugfix
   * Weekprogram-Status(-with Ack) is not triggered in case of Mode-Change

Version 2.0.000 - 2022-02-07
--------------------------------------------------------------

** Bugfix
   * WHS2 sends many status messages during inclusion process
   * If the switch-on and switch-off times in the Easy Profile are set to "Not active" at the same time, the device hangs up.
   * WHS2 fails sporadically and can only be operated again after the 230 volt supply has been interrupted


** Improvement
   * The time information telegram does not contain a note about the summer / winter time change.
   * If possible, send multicasts only to PARTNER_ALL_WIRED_DEVICES instead of to PARTNER_ALL_DEVICES.


Version 1.8.000 - 2018-12-19
--------------------------------------------------------------

** Bugfix
	* Weekprogram under certain circumstances does switch all actuator channels if switched all at the same time 

** Improvement
	* Weekprogram implemented
	* All PowerUp parameters, that are listed in list 3 of the device, must be supported.
	* Disable MSG to AC parameter implemented
	* Application Sequence Counter handling adapted
	* Configuration parameter for pushbutton channel (long presstime, double presstime, repeated long press timeout) added
   
** Modification
	* Change to Version 1.8.000.

	
Version 1.6.000 - 2017-01-30
--------------------------------------------------------------

** Bugfix
	* Error in heat demand function (VIRT B-Channels of both actuators) fixed. 
   
** Modification
	* Change to Version 1.6.000.

	
Version 1.4.000 - 2016-09-20
--------------------------------------------------------------

** Bugfix
	* Issue with global pump protection function (in conjunction with the FAL) fixed.
   
** Modification
	* Change to Version 1.4.000.

Version 1.2.000 - 2016-09-08
--------------------------------------------------------------


--- END OF FILE ---
