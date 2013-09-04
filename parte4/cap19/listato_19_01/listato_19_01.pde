int x = 0;
int passo = 1;

void setup(){
  size(500, 200);
}

void draw(){
  background(220);
  ellipse(x, height/2, 50, 50);
  x = x + passo;
  if (x == 0 || x == width){
    passo = -passo;
  }
}
