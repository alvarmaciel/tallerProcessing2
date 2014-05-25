int posX = 0;
int posY = 0;
int tamX = 10;
int tamY = 10;

void setup() {
  size(800, 450);
  //noCursor();
}

void draw() {
  //background(0);
  fill(random(0, 255), random(0, 255), random(0,255));
  rect(posX, posY, tamX, tamY);
  tamX=tamX+1;
  tamY=tamY+1;
  posX=posX+1;
  posY=posY+2;

  ellipse(random(100, 850), random(100,450), 100, 100);
  
  
  
  
  
}

