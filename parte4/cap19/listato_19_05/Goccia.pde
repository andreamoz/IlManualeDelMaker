class Goccia {

  int x;
  int y;
  int raggio;
  int raggioMinimo;
  int raggioMassimo;
  int colore;
  int coloreIniziale;
  
  Goccia(int x, int y, int rMin, int rMax, int coloreIniziale){
    this.x = x;
    this.y = y;
    this.raggioMinimo = rMin;
    this.raggioMassimo = rMax;
    this.raggio = raggioMinimo;
    this.coloreIniziale = coloreIniziale;
    this.colore = coloreIniziale;
  }
  
  void aggiorna(){
    raggio = raggio + 1;
    colore = colore + 1;
    if (raggio > raggioMassimo) {
      raggio = raggioMinimo;
      colore = coloreIniziale;
    }
  }
  
  void disegna(){
    stroke(colore);
    ellipse(x, y, raggio, raggio);
  }
}
