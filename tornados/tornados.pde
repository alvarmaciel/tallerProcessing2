int tamX = 40;
int tamY = 40;
int movX = 0;
int movY = 0;

void setup() {
  size(800, 480);
  smooth();
}
void draw() {
  background(127);
  
    fill(random(0, 255), random(0, 255), random(0, 255));
  ellipse(movX, movY, tamX, tamY);
  movY = movY + int (random(5, 10));
}
void keyPressed() { 

  if (key=='s' || key=='S') { // Si apreto s o S grabo el dibujo 
    saveFrame("ejemplo-####.png");
  }
}

