boolean pintar;
boolean cir;
float rr;
float gg;
float bb;

void setup() {
    size (800, 480);
  //println("estoy en el setup()");
rr=50;
gg=50;
bb=50;
pintar = true;
cir= true;
}

void draw() {
  //println("mouse en x: " + mouseX);
  //println("Valor de a: " , a);


  if (pintar==true) {
    fill(rr, gg, bb);
    stroke(1);
  }
  else {
    noFill();
    noStroke();
  }
  //fill(random(0, 255), random(0, 255), random(0, 255));
  if (cir==true){
  rect(random(0, 800), random (0, 400), 50, 50);
  }
  else{
    ellipse(random(0, 800), random (0, 400), 50, 50);
  }
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
    rr=random(255);
    gg=random(255);
    bb=random(255);
  }
  if (key=='c') {
  cir= !cir;
  }
}

