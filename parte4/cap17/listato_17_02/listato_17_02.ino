#include <Servo.h>

Servo myservo;
int posizione = 0;

void setup() {
  myservo.attach(9);
}

void loop() {
  int pos = analogRead(A0);
  posizione = map(pos, 0, 1023, 0, 180);
  myservo.write(posizione);
  delay(100);
}
