int sfondo = 200;
int x;
int y;
int raggioMinimo = 10;
int raggioMassimo = 100;
int raggio = 10;
int coloreIniziale = 100;
int colore = coloreIniziale;

void setup() {
  size(200, 200);
  x = width/2;
  y = height/2;
  fill(sfondo);
}

void draw() {
  background(sfondo);
  stroke(colore);
  ellipse(x, y, raggio, raggio);
  raggio = raggio + 1;
  colore = colore + 1;
  if (raggio > raggioMassimo) {
    raggio = raggioMinimo;
    colore = coloreIniziale;
  }
}
