import RPi.GPIO as GPIO
import time

#BCM per le label; BOARD per la piedinatura fisica dello zoccolo
GPIO.setmode(GPIO.BCM)

GPIO.setup(25, GPIO.OUT)
GPIO.setup(24, GPIO.IN)

while True:
	if (GPIO.input(24) == True):
		GPIO.output(25, GPIO.HIGH)
		print("Ouch!")
	time.sleep(.1)
	GPIO.output(3, GPIO.LOW)