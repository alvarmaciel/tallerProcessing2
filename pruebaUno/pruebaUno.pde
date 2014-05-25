void setup() {

  size(800, 450); //; terminó la línea,  no toma espacios ni retornos de carro
  noLoop();
} // Ejecución única


void draw() {
  //Funciones de dibujo
  background(300, 50, 255);// valores del 0-255 o RGB
  // escala de grises un valor 0-255
  //background(127); // Las instrucciones son secuenciales.
  rect(100, 225, 100, 40);
  rect(100, 280, 100, 40);
  rect(100, 335, 100, 40);
    rect(100, 225, 50, 150); //parámetros.  inicio x incio y y luego el tamaño

  // fill(127, 50);
  noStroke();
  ellipse(400, 285,100,100);
  noStroke();
  ellipse(450, 285,100,100);
  triangle(350,285,500,285,400,400);

  saveFrame("hola.jpg");
} // bloque de ejecución continuo a 60 veces por segundo ventanita de 100px2

