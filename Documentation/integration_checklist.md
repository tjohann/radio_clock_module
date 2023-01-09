Integration - checklist for RADIO-CLOCK image and hexfiles
==========================================================

This is a simple integration checklist for radio_clock_module
Project. The purpose is to provide a repreducable delivery for the
main versions (RADIO-CLOCK_Vx.x.x).

Below you find the common checks and the special tasks for RADIO-CLOCK_Vx.x.x.


Common checks
-------------

installation checks:

	- check raspi installation

build/config updates on device:

	- xbps-install -Su
	- reboot
	- xbps-remove -Oo
	- date > UPDATE_ROOTFS_DATE
	- ...
	- mupdatedb

tool checks on device:

	- is network (ip) config correct?
	- is baalued working?
	- ...

sdk checks:

	- update checksum.sha256

avr board checks

	- ...

RADIO-CLOCK_V0.0.1 (xx.0x.2023)
--------------------------

	Common checks                                           [2023-0x-xx -> done]

	Config updates (on the target):
		- ...

	Build updates:
		- Raspi
		  - ...
		- AVR
		  - ...
		- AVR baseboard
		  - ...
	    - ...
		  - ...

	Script updates:
		- ...

	AVR updates:
		- ...

	Others:
		- ...

