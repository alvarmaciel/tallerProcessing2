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
//  noStroke();
  //fill(200, 50, 180);
  posX=width/2;
  posY=height/2;
  velX=random(1, 5);
  velY=random(1, 5);
  rr=50;
  gg=50;
  bb=50;
  pintar = true;
  cir = false;
}

void draw() {
  //background(0);
  posX= velX + posX;
  posY= velY + posY;
  if (pintar==true) {
    fill(rr, gg, bb);
    //stroke(1);
  }
  else {
    noFill();
  }
  if (cir==true) {
    velY = velY * -1;
    cir = !cir;
  }



  if (posX < 25 || posX > width - 25 ) {
    velX = velX * -1;
   // rr=random(255);
   // gg=random(255);
   // bb=random(255);
  }
  if (posY < 25 || posY > height-25 ) {
    velY=velY * -1;
    rr=random(255);
    gg=random(255);
    bb=random(255);
  }

  ellipse(posX, posY, 50, 50);
}

void keyPressed() {

  //println("una tecla");
  if (key=='s' || key=='S') { // Si apreto s o S grabo el dibujo 
    saveFrame("ejemplo" + frameCount + ".png");
  }
  if (key=='q') {
    pintar= !pintar;
  }
  if (key=='r') {
    cir= !cir;
  }
  if (key=='c') {
   // rr=random(255);
   // gg=random(255);
   // bb=random(255);
  }
}

