PVector puntoFijo;
PVector puntoMovil;

void setup() {
  size(600, 400);
  puntoFijo = new PVector(width/2, height/2); // Punto fijo en el centro
  puntoMovil = new PVector(width/2, height/2); // Punto móvil inicialmente en el centro
}

void draw() {
  background(255);
  
  // Actualiza la posición del punto móvil con la posición del mouse
  puntoMovil.set(mouseX, mouseY);
  
  // Dibuja el punto fijo en el centro
  fill(0);
  ellipse(puntoFijo.x, puntoFijo.y, 10, 10);
  
  // Dibuja el punto móvil
  fill(255, 0, 0);
  ellipse(puntoMovil.x, puntoMovil.y, 10, 10);
  
  // Dibuja la línea recta fija hacia la derecha del punto móvil
  PVector derecha = new PVector(50, 0); // Vector que apunta hacia la derecha
  PVector puntoDerecha = PVector.add(puntoMovil, derecha);
  line(puntoMovil.x, puntoMovil.y, puntoDerecha.x, puntoDerecha.y);
  
  // Dibuja la línea que apunta al punto fijo
  PVector haciaPuntoFijo = PVector.sub(puntoFijo, puntoMovil);
  haciaPuntoFijo.normalize(); // Normaliza el vector
  haciaPuntoFijo.mult(50); // Escala el vector
  PVector puntoHaciaFijo = PVector.add(puntoMovil, haciaPuntoFijo);
  line(puntoMovil.x, puntoMovil.y, puntoHaciaFijo.x, puntoHaciaFijo.y);
  
  // Imprime la posición del punto móvil por consola
  println("Posición del punto móvil: (" + puntoMovil.x + ", " + puntoMovil.y + ")");
}
