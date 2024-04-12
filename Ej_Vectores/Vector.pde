class Vector{
  private PVector posOrigen;
  private PVector posDestino;
  
  /** Constructor parametrizado */
  public Vector(PVector posOrigen, PVector posDestino){
    this.posOrigen = posOrigen;
    this.posDestino = posDestino;
  }
  
  /** Metodo que dibuja al vector */
  public void display(){
    // sumar al origen porque se actualiza constantemente
    line(posOrigen.x, posOrigen.y, posOrigen.x + posDestino.x, posOrigen.y + posDestino.y);
  }
  
  //** Gets y Sets*/
  public void setPosOrigen(PVector nuevaPos){
    this.posOrigen = nuevaPos;
  }
}
