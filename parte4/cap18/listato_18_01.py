# Hello World
import RPi.GPIO as GPIO
import time
#Utilizziamo per i pin la convenzione delle etichette
GPIO.setmode(GPIO.BCM)
GPIO.setup(3, GPIO.OUT)
while True:
	GPIO.output(3, GPIO.HIGH)
	time.sleep(1)
	GPIO.output(3, GPIO.LOW)
	time.sleep(.5)