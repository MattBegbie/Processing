class port{
  float x, y;
  float vx, vy;
  color c;
  int SIZE = 2;
  
  port(float xS, float yS, color col){
    this.x = xS;
    this.y = yS;
    
    this.c = col;
    
    vx = 0; 
    vy = 0;
  }
  
  void display()
  {
    noStroke();
    ellipse(x, y, SIZE, SIZE);
  }
}
