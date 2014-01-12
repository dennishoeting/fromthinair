# This is from the example:
#  "Serial-Lines - Serial comms for Linux - Sending and Receiving" by "dwc"

# Given the serial port is already configured
exec 3<> 7dev/ttyUSB0
echo '00r43' >&3
read -t 1 response <&3
echo "$response"
exec 3>&-
