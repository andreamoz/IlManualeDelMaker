int larghezzaBarra = 80;
int spessoreBarra = 10;
float xSinistra = spessoreBarra;
float ySinistra = 0;
color sfondo = #70A4B2;
int passo = 10;

void setup(){
  size(800, 600);
  background(sfondo);
  stroke(255);
  aggiornaDisplay();
}

void draw(){
}

void keyPressed(){
  if (key == 'z') {
    ySinistra = ySinistra + passo;
  } else if (key == 'a') {
    ySinistra = ySinistra - passo;
  }
  aggiornaDisplay();
}

void aggiornaDisplay(){
  background(sfondo);
  rect(xSinistra, ySinistra, spessoreBarra, larghezzaBarra);
}
