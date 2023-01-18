/*  3d version of splish splash
 *
 *
 */

float x, y, z;

void setup()
{
  size(720, 720, P3D);
  x = width/2;
  y = height /2;
  z = 0;
  //z = x;
  stroke(255);
  background(0);
}

void draw()
{
  translate(x, y, z);
  //sphere(6);
  //draw center point
  //sphere(0);

  rotateX(PI/2);
  rotateZ(-PI/6);
  drawTheTriangle();
  Point(0,0,0);
  //draw circle around it with points
  for (int i = 0; i < 360; i++)
  {
    int newX = sqrt(
    Point(
  }
  //draw etire sphere
}

void drawTheTriangle()
{
  //noFill();

  beginShape();
  vertex(-100, -100, -100);
  vertex( 100, -100, -100);
  vertex(   0, 0, 100);

  vertex( 100, -100, -100);
  vertex( 100, 100, -100);
  vertex(   0, 0, 100);

  vertex( 100, 100, -100);
  vertex(-100, 100, -100);
  vertex(   0, 0, 100);

  vertex(-100, 100, -100);
  vertex(-100, -100, -100);
  vertex(   0, 0, 100);
  endShape();
}

void Point(float tx, float ty, float tz)
{
  float pS = 1;
  beginShape();
  vertex(-pS + tx, -pS + ty, -pS + tz);
  vertex( pS + tx, -pS + ty, -pS + tz);
  vertex(   0 + tx, 0 + ty, pS + tz);
  endShape();
}
