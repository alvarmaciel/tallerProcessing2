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
float middle;
float base;
boolean reboteS;
boolean reboteI;
boolean fin;
float test;

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
  limYs= 50;
  limYi=350;
  posY=100;
  base=limYi - limYs;
  middle= base/2;
  reboteS= false;
  reboteI=false;
  fin=false;
  test = limYi/2;
}

void draw() {
  //background(0);
  reboteS=false;
  reboteI=false;
  posY=velY + posY;
  posX=velX + posX;
  fill(rr, gg, bb);

  if (posY < limYs || posY > limYi ) { // si las posición de Y es menor que el limite superior de Y o mayor que el límite inferior de Y cambia la dirección y el color
    velY=velY * -1;
    posX=posX+random(0, 10);
    rr=random(255);
    gg=random(255);
    bb=random(255);
    if (posY > limYi) { // si rebotó con el fondo le flag rebote cambia a true
      reboteI=!reboteI;
    }  
    if (posY < limYs) { // si rebotó con el fondo le flag rebote cambia a true
      reboteS=!reboteS;
    }
  }




  if (limYi <= test) {
    fin = true;
  } 

  if (fin != true) {
    ellipse(posX, posY, 20, 20);
  }
  if (reboteI==true ) { // si rebotó achico el limite superior (aumentanto el valor del limite Y)
    limYs=limYs + 10;
  }
  if (reboteS==true) {
    limYi= limYi - 10;
    // limYi=limYi - 1;
  }
  println(test, limYi);
}

void keyPressed() {

  //println("una tecla");
  if (key=='s' || key=='S') { // Si apreto s o S grabo el dibujo 
    saveFrame("ejemplo" + frameCount + ".png");
  }
}

