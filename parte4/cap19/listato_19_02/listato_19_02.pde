int numeroCerchi = 10;
int[] x = new int[numeroCerchi];
int[] y = new int[numeroCerchi];
int[] dim = new int[numeroCerchi];
int[] colore = new int[numeroCerchi];
int[] passo = new int[numeroCerchi];

void setup() {
  size(500, 200);
  int distanza = height / numeroCerchi;
  int temp = distanza / 2;
  for (int i = 0; i < numeroCerchi; i++) {
    y[i] = temp;
    temp = temp + distanza;
    dim[i] = int(random(5, 2.5 * distanza));
    colore[i] = int(random(255));
    passo[i] = int(random(1, 15));
  }
}

void draw(){
  background(200);
  for (int i = 0; i < numeroCerchi; i++) {
    x[i] = x[i] + passo[i];
    fill(colore[i]);
    ellipse(x[i], y[i], dim[i], dim[i]);
    if (x[i] > width || x[i] < 0) {
      passo[i] = - passo[i];
    }
  }
}
