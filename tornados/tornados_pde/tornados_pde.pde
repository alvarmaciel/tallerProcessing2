boolean cir;
boolean pintar;
float posX;
float posY;
float velX;
float velY;
float rr;
float gg;
float bb;

void setup() {
  size(800, 400);
  smooth();  
  posX=100;
  posY=100;
  velX=random(1, 2);
  velY=random(1, 2);
  rr=50;
  gg=50;
  bb=50;
  pintar = true;
  cir = false;
}

void draw() {
  //background(0);

  if (mousePressed==true) {

    ellipse(posX, posY, 50, 50);
  }
  if posY >= 275{
   posY=posY+1; 
  }
}

void keyPressed() {

  //println("una tecla");
  if (key=='s' || key=='S') { // Si apreto s o S grabo el dibujo 
    saveFrame("ejemplo" + frameCount + ".png");
  }
}

