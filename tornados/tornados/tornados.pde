boolean cir;
boolean pintar;
float posX;
float posY;
float velX;
float velY;
float rr;
float gg;
float bb;
float limYs;
float limYi;
float vort;
float base;
boolean rebote;

void setup() {
  size(800, 400);
  smooth();  
  posX=100;
  velX=0;
  velY=4;
  rr=50;
  gg=50;
  bb=50;
  pintar = true;
  cir = false;
  limYs= random(50, 100);
  limYi=random(300, 400);
  posY=limYs;
  base=limYi - limYs;
  vort= base/2;
  rebote= false;
}

void draw() {
  //background(0);
  posY=velY + posY;
  posX=velX + posX;
  fill(rr, gg, bb);

  if (posY <= limYs || posY > limYi) {
    posX=posX + 16;
    velY=velY * -1;
    rr=random(255);
    gg=random(255);
    bb=random(255);
    rebote= true;
    if ( limYs < limYi) {
      //   limYs = limYs + 1;
      println(limYs);
      rebote=!rebote;
      limYs=limYs + 4;
    }
  }



  // if (posX < 200) {
  ellipse(posX, posY, 50, 50);
  // }
}

void keyPressed() {

  //println("una tecla");
  if (key=='s' || key=='S') { // Si apreto s o S grabo el dibujo 
    saveFrame("ejemplo" + frameCount + ".png");
  }
}

