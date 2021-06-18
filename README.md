# Prerequisites

Make sure that docker is strted by launching
	sudo dockerd &


# Launch

You launch start.sh and provide an additional parameter
for the card reader usb device, e.g.:

	./start.sh --privileged --device=/dev/bus/usb/001/047

# Inside docker

1. We have to start the smart card manager by running
   /etc/init.d/pcscd start

2. We need to ensure that we can launch X applications
   such as firefox by:

   # This has been added to the latest x11-xserver-utils.
   # apt-get install x11-xserver-utils
   xhost local:root

3. We sign documents by running
   /opt/eparakstitajs3/eparakstitahs3
   Or in firefox using http://eparaksts.lv
   (we may need to run eparakstitajs3 before firefox)
   as the extension magically appears in the browser.
