import urllib
import urllib2
import xml.etree.ElementTree as etree
from datetime import datetime
import RPi.GPIO as GPIO

#utilizziamo la piedinatura logica dei pin GPIO
GPIO.setmode(GPIO.BCM)

#il pin GPIO25 sarà un uscita
GPIO.setup(25, GPIO.OUT)

#crea l'oggetto datetime corrispondente all'istante attuale
now = datetime.now()

service = urllib2.urlopen("http://www.earthtools.org/sun/45.4641611/9.1903361/" + now.day + "/" +now.month + "/1/1")
response = service.read()

#carica l'xml da una stringa: response
tree = etree.fromstring(response)
print "Il sole sorge alle ore: " + tree[3][0].text

#converte l'orario da testo in oggetto datetime
wakeup = datetime.strptime(tree[3][0].text, '%H:%M:%S')

#wakeup non ha impostato la data: la copiamo da now
wakeup = wakeup.replace(year=now.year, month=now. month, day=now.day)
if (now > wakeup):
	print "spegni la luce"
	GPIO.output(25, GPIO.LOW)
else:
	print "luce accesa"
	GPIO.output(25, GPIO.HIGH)