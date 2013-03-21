To compile, run

```
npm build .
```

Loading Firmware onto I/O Board
-------------------------------

```
cd firmware
sudo ./accesloader.pl
```

* Currently on Ubuntu 12.04 Firmware needs to be manually loaded when the USB is connected

* Requirements
  - libusb 1.0                 - http://libusb.org (apt-get install libusb-dev)
  - nodejs                     - http://nodejs.org
  - AIOUSB API Linux Drivers   - http://accesio.com/go.cgi?p=../usb/usb-iiro-16.html
  - fxload                     - apt-get install fxload

* Resources
 - Accesio Manual 		- http://accesio.com/MANUALS/USB-IIRO-16.PDF
 - AIOUSB API Reference - http://accesio.com/MANUALS/AIOUSB_API_Reference.html
 - Accesio Product Page - http://accesio.com/go.cgi?p=../usb/usb-iiro-16.html