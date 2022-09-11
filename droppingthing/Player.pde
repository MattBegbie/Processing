class Player{
  float x = width / 2;
  float y = 2;
  
  float ySpeed = 100;
  void moveX(){
    
  
  }
  void moveY(){
    y = y + ySpeed;
  }
  void show(){
    stroke(#844685);
    fill(#827397);
    circle(x, y, 100);
  }
}
