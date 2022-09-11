

void setup() {
  size(800, 800);
  frameRate(90);
}

float x = 800 / 2;
float y = 0;
float diameter = 100;
float ySpeed = 0;
float xSpeed = 0;
float yAcc = .4;
float xAcc = .4;

void draw() {
  background(#FAF4FF);

  //draw ball
  stroke(#844685);
  fill(#827397);
  circle(x, y, diameter);


  //floor
  stroke(#f3c623);
  strokeWeight(3);
  line(0, height - 100, width, height - 100);

  //move the ball and update speeds
  ySpeed = ySpeed + yAcc;
  y = y + ySpeed;

  move();
  dropcheck();
}


void dropcheck() {
  if (y + (diameter/2) > height - 100) { //something about this is funky
    ySpeed = ySpeed * -1;
  }
}

void move() {
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      xSpeed = xSpeed + xAcc;
      x = x - xSpeed;
    }
    if (key == 's' || key == 'S') {
      xSpeed = xSpeed + xAcc;
      x = x + xSpeed;
    }
  }
  else{
   xSpeed =  xSpeed - xAcc;
  }
}


//to do
  //fix sideways speed
