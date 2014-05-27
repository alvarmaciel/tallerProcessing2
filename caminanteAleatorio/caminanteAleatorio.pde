float posX;
float posY;
boolean colores;

void setup() {
  size(400, 400);
  //smooth(8);
  posX=200;
  posY=200;
  colores=false;
}

void draw() {
  ellipse( posX, posY, 10, 10 );
  posX=posX + random(-5, 5);
  posY=posY + random(-5, 5);
  println(colores);
}

void keyPressed() { 

  if (key=='s' || key=='S') { // Si apreto s o S grabo el dibujo 
    saveFrame("ejemplo-####.png");
  }
  if (key=='C' || key=='c') {
    fill(random(0, 255), random(0, 255), random(0, 255));
  }
  
  if (key=='b' || key=='B') {
    fill(255);
  }
  
}

