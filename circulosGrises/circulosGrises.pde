boolean alea= false;
boolean cua= false;
boolean cir= true;
int tamX=40;
int tamY=40;


void setup() {
  size(800, 480);
}
void draw() {



  if (mousePressed==true) {
    if (alea==true) {
      fill(random(0, 255), random(0, 255), random(0, 255));
    }
    if (cir==true) {
      ellipse(mouseX, mouseY, 50, 50);
    }
    if (cua==true) {
      rect(mouseX, mouseY, 50, 50);
    }
  }
}

void keyPressed() { 

  if (key=='s' || key=='S') { // Si apreto s o S grabo el dibujo 
    saveFrame("ejemplo-####.png");
  }
  if (key == 'w') {
    strokeWeight(10);
  }
  if (key=='h') {
    strokeWeight(1);
  }
  if (key == 'n') {
    noFill();
  }
  if (key=='r') {
    alea=true;
  }
  if (key=='R') {
    alea=false;
    fill(255);
  }
  if (key=='c') {
    cua= !cua;
    cir= !cir;
  }
}

