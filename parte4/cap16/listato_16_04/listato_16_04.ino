int led = 13;
int pulsante = 7;

void setup() {
  pinMode(led, output);
  pinMode(pulsante, INPUT);
}

void loop() {
  if (digitalRead(pulsante) == HIGH) {
    // prima volta
    digitalWrite(led, HIGH);
    delay(1000);
    digitalWrite(led, LOW);
    delay(1000);
    
    // seconda volta
    digitalWrite(led, HIGH);
    delay(1000);
    digitalWrite(led, LOW);
    delay(1000);
    
    // terza volta
    digitalWrite(led, HIGH);
    delay(1000);
    digitalWrite(led, LOW);
    delay(1000);
  } else {
    digitalWrite(led, LOW);
  }
}
