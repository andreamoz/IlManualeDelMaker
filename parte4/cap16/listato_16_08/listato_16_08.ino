int led = 13;
int trimmer = 0;
int ritardo = 1000;
int soglia = 250;

void setup {
  pinMode(led, OUTPUT);
}

void loop {
  trimmer = analogRead(A0);
  if (trimmer >= soglia) {
    ritardo = trimmer;
  }
  digitalWrite(led, HIGH);
  delay(ritardo);
  digitalWrite(led, LOW);
  delay(ritardo);
}
