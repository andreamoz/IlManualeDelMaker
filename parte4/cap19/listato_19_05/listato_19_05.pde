int sfondo = 200;
int raggioMinimo = 10;
int raggioMassimo = 100;
int raggio = 10;
int coloreIniziale = 100;
int colore = coloreIniziale;
Goccia goccia;

void setup() {
  size(200, 200);
  fill(sfondo);
  goccia = new Goccia(width/2, height/2,
  raggioMinimo, raggioMassimo, coloreIniziale);
}

void draw() {
  background(sfondo);
  goccia.aggiorna();
  goccia.disegna();
}

