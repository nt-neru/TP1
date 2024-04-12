// Objetos
Vector vectorPj;
Vector vectorPjTesoro;

// Variables Globales
PVector posTesoro;

public void setup(){
  size(600,600);
  vectorPj = new Vector(new PVector(0,0), new PVector(50,0));
  vectorPjTesoro = new Vector();
  posTesoro = new PVector(width/2, height/2);
}

public void draw(){
  background(255);
  vectorPj.setPosOrigen(new PVector (mouseX, mouseY));
  vectorPj.display();
  displayTesoro();
  dibujarVectorPjTesoro();
}

// dibujando el tesoro
public void displayTesoro(){
  strokeWeight(20);
  point(posTesoro.x, posTesoro.y);
}

//dibujar el vector entre el personaje y el tesoro
public void dibujarVectorPjTesoro(){
  vectorPjTesoro.setPosOrigen(vectorPj.getPosOrigen()); // el nuevo origen debe ser el pj
  // para el destino se necesita la pos del tesoro - la pos del pj, y lo normalizo
  vectorPjTesoro.setPosDestino(PVector.sub(posTesoro, vectorPj.getPosOrigen()).normalize().mult(50));
  vectorPjTesoro.display(); // dubujando
}
