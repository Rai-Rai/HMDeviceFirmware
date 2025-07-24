C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:      HmIP-DRG-DALI - Homematic IP DALI Gateway

Company:     eQ-3, Maiburger Str. 29, 26789 Leer, Germany



Version 1.6.2 - 2024-12-10
--------------------------------------------------------------

** Bugfix
   * Netfinder responses sometimes with wrong network data
   * Netfinder: Race condition when receiving ETH-frames in short order
   * Weekprog only switch channel on for short time
   * ToogleInversToCounter only switch off
   * DALI parameter change after set/unset group
   * Switching one group does not trigger status info from other groups
   * Error at set switch over group to 75%
   * Devices hangs up with Netfinder 2.0.2



Version 1.6.0 - 2024-06-12
--------------------------------------------------------------

** Bugfix
   * E13 after factory reset
   * Error while addressing external eeprom with high addresses
   * Device makes inexplicably many Backbone_Sequence_Number_Validations
   * The ON_MIN_LEVEL parameter is evaluated inconsistently for a DEC and a direct link.
   * At inclusion the mac adresse change after reboot

** Improvement
   * Restoring the dimming status from the time profile after device restart
   * Handle DT8 devices with RGBWA, RGBWAF and Primary N > 4 as devices with 4 channels (RGBW / Primary N=4)
   * Increase the maximum number of link partners to 20
   * Improved error handling for configuration change notification on the device to the AP
   * Search for already addressed devices with non-initialized random address
   * Duty cycle has no effect with light scene



Version 1.4.10 - 2023-06-28
--------------------------------------------------------------

** Bugfix
   * Route management request is sent with local hop limit 7. 
   * Timeout for sequence number validation is not handled correctly.



Version 1.4.8 - 2023-05-08
--------------------------------------------------------------

** Bugfix
   * Much configuration can lead to deadlock
   * At the end of a ramp, the last status of the luminaire may not be queried.
   * Faulty effect processing at level = 0%
   * HSV data in StatusInfo at dimming as tuneable white
   * Incorrect status when using UL effects
   * Several improvements and bugfixes for effects

** Improvement
   * Enable selective reset of individual devices on the bus



Version 1.4.6 - 2023-04-19
--------------------------------------------------------------

** Bugfix
   * Effect: Sunrise has wrong default value
   * Effect with old value sometimes take the wrong value
   * Effect colour with level 0 is not set



Version 1.4.4 - 2023-04-12
--------------------------------------------------------------

** Bugfix
   * Parameter "UNIVERSAL_LIGHT_MAX_CAPABILITIES" is not transferred to crRFD after DALI reset



Version 1.4.2 - 2023-04-11
--------------------------------------------------------------

** Bugfix
   * After reboot or inclusion device sends frame with wrong frametype



Version 1.4.0 - 2023-03-31
--------------------------------------------------------------

** Bugfix
   * Effect / scene with random sequence and endless repetitions stops
   * Device does not respond to multicast addresses AllWiredAndBackboneDevices and AllDinRailDevices

** New Feature
   * Status extension for the search in the DALI bus

** Improvement
   * Adjustment of firmware update blinking when the main processor updates the coprocessor



Version 1.2.2 - 2023-03-01
--------------------------------------------------------------

** Bugfix
   * Error while initialization of ethernet phy, if devices was powered down for about 10 seconds



Version 1.2.0 - 2023-01-25
--------------------------------------------------------------

** New Feature
   * Frist Release



--- END OF FILE ---
