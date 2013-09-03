int led = 13;
int ritardo = 1000;

void setup {
  pinMode(led, OUTPUT);
}

void loop {
  ritardo = analogRead(A0);
  digitalWrite(led, HIGH);
  delay(ritardo);
  digitalWrite(led, LOW);
  delay(ritardo);
}
