Some infos about all relevant topics
====================================


Raspi Zero
----------


Raspi I2C topics:

	https://www.waveshare.com/wiki/Raspberry_Pi_Tutorial_Series:_I2C


I2C topics and linux
--------------------

I2C tools -> i2cdetect -l

Links:

	https://www.kernel.org/doc/Documentation/i2c/i2c-protocol
	http://www.netzmafia.de/skripten/hardware/RasPi/RasPi_I2C.html

Youtube:
	https://www.youtube.com/watch?v=BvIQ0b2gUFs  (Raspberry PI 2 - Fun with I2C DACs and ADC's)


Using i2c-dev driver
--------------------

Sysfs entry -> /sys/class/i2c-dev/
Character device i2c-%d -> (i2c-0, i2c-1, ...)

Links:

	https://www.kernel.org/doc/Documentation/i2c/dev-interface
	https://www.kernel.org/doc/Documentation/i2c/fault-codes


GPIO and raspi
--------------

Link:

	https://elinux.org/RPi_GPIO_Code_Samples


RTC (real time clock) module
----------------------------

The Raspi does not have a RTC on the board. So we need a static network connection. In my images, the ntp client is already activated, but direct after a reboot it takes some time to get the actual time. During this period all date values are wrong (stand on UNIX time, see https://de.wikipedia.org/wiki/Unixzeit).

I add the module like https://www.elecrow.com/wiki/index.php?title=Tiny_RTC to the board. To use it with an raspberry you have to manually to some changes. There\`re a lot of descriptions in the www, here`s an really good example: http://www.netzmafia.de/skripten/hardware/RasPi/Projekt-RTC/index.html .

A least there`re 2 changes needed:

	remove the pullups from SCL/SDA (remove R2/R3)
	remove the load circuit if you want to use a CR2032 batterie (remove D1/R4/R6 -> shortcut R6 pads)

![Alt text](../pics/RTC_before.jpg?raw=true "The original PCB")
![Alt text](../pics/RTC_after_2.jpg?raw=true "What changed?")
