import serial

port = "/dev/ttyACM0"
Arduino = serial.Serial(port, 9600)
Arduino.flushInput()

while True:
	str = raw_input(">:")
	if (str == "q"):
		break
	print str
	Arduino.write(str)