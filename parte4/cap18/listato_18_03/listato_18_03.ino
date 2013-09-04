void setup() {
  Serial.begin(9600);
  pinMode(13, OUTPUT);
}

void loop() {
  int n = Serial.read();
  if ((char) n == 'a') {
    digitalWrite(13, HIGH);
  }
  if ((char) n == 's') {
    digitalWrite(13, LOW);
  }
}
