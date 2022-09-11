/**
*  "particle simulator"   inspired by https://youtu.be/0Kx4Y9TVMGg
*
*/



void setup(){
  size(1920, 1080);
  noStroke();
  background(0);
}



void draw()
{
  port p1 = new port(50, 50, color(255,0,0));

  p1.display();
  
  
}
