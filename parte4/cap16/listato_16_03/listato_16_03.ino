int led = 13;
int pulsante = 7;

void setup() {
  pinMode(led, output);
  pinMode(pulsante, INPUT);
}

void loop() {
  if (digitalRead(pulsante) == HIGH) {
    digitalWrite(led, HIGH);
  } else {
    digitalWrite(led, LOW);
  }
}
