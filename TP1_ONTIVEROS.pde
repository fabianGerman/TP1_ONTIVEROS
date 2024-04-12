PVector centro;
PVector derecha;
PVector punto;

void setup() {
  size(600, 400);
  centro = new PVector(width/2, height/2); // Define el centro de la pantalla
  derecha = new PVector(1, 0); // Vector que apunta siempre hacia la derecha
  punto = new PVector(mouseX, mouseY); // Inicializa el punto en la posición del mouse
}

void draw() {
  background(0);
  
  // Actualiza la posición del punto con la posición del mouse
  punto.set(mouseX, mouseY);
  
  // Dibuja el punto en el centro
  fill(0);
  ellipse(centro.x, centro.y, 10, 10);
  
  // Dibuja el vector que apunta siempre hacia la derecha
  PVector derechaCopiada = derecha.copy(); // Copia el vector para no modificar el original
  vector(centro, derechaCopiada.mult(200), color(255, 0, 0)); // Escalamos la copia del vector para visualización
  
  // Dibuja el vector que apunta al punto
  PVector puntoVector = PVector.sub(punto, centro); // Calcula el vector desde el centro hacia el punto
  vector(centro, puntoVector, color(0, 0, 255));
  
  // Muestra el punto en la posición del mouse
  fill(0, 0, 255);
  ellipse(punto.x, punto.y, 10, 10);
  
  // Imprime las coordenadas del punto por consola
  println("Coordenadas del punto: (" + punto.x + ", " + punto.y + ")");
}

void vector(PVector origen, PVector vector, color col) {
  stroke(col);
  strokeWeight(2);
  line(origen.x, origen.y, origen.x + vector.x, origen.y + vector.y);
}
