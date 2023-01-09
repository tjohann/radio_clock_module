My radio clock module
=====================

This is all content around my radio clock modul with a Raspi-Zero and some AVR-Devices. It replaces my old radio clock and adds some new features like MP3 player and IR controller.

[Related links](Documentation/links.md).

[Useful knowledge](Documentation/knowledge_base.md).

If you face a bug, then pls use https://github.com/tjohann/radio_clock_module/issues to create an ticket.


Overview
--------

Overview:
![Alt text](pics/overview.png?raw=true "Overview and relations of my Radio-Clock-Module")


State
-----

**WARNING**: This is work in progress! Don't expect things to be complete in any dimension. Possible states are open, described, in_development, testing, works, released.

	raspi-base-board -> open
	avr-board -> open
	avr-base-board -> open


Requirement
-----------

[Detailed requirements](Documentation/requirements.md).


Additional mountpoints
----------------------

...


Images
------

...

[SD card usage](Documentation/diskfree_sdcard.txt).


User for Raspi
--------------

The user baalue is available on the image, you can use it to login via ssh and then use sudo or su -l for root tasks.

    root (password: root)
    baalue (password: baalue)


Versioninfo
-----------

I use a standard version scheme via git tags based on 3 numbers:

	RADIO-CLOCK_V0.0.1

The first number is the mayor number which reflect bigger changes. The second number (minor) will change because of

	- new scripts
	- image updates
	- new releases of a daemon
	- new release of a avr hex file

So a simple version update of the kernel will not increase the minor number, instead it will increase the third number (age number):

	- bugfixes
	- update kernel version
	- all smaller changes

[Integration-Checklist](Documentation/integration_checklist.md).


Raspi Zero
----------

...


AVR
---

...


Schematics
----------

See folder schematics for more info.

[Schematics](schematics/README.md).


Powermanagement
---------------

...


Additional libraries/tools
--------------------------

To control the device, i use my daemon baalued (https://github.com/tjohann/baalued), which is based on libbalue (https://github.com/tjohann/libbaalue).


LED-Matrix
----------

...


The code
--------

...


The http server
---------------

...
