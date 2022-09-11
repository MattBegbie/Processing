int total = 500;
float r;
boolean upDown = true;
float min = 5;
float diff = 10;
float max = min + diff;
float factor = min;
float growth = 0.005;
void setup()
{
  colorMode(HSB, 360);
  //fullScreen();
  size(1920, 1080);
  r = height/2 - 30;
  //frameRate(30);
}

PVector getVector(float index)
{
  float angle = map(index, 0, total, 0, TWO_PI);
  PVector v = PVector.fromAngle(angle);
  v.mult(r);
  return v;
}

float updateFactor(float factor)
{
  if (upDown)
  {
    factor += growth;
    if (factor >= max)
    {
      upDown = !upDown;
    }
  } else
  {
    factor -= growth * 2;
    if (factor <= min)
    {
      upDown = !upDown;
    }
  }
  return factor;
}

void draw()
{
  background(0);
  //float factor = mouseX / (float) 10;
  //float factor = 10;
  factor = updateFactor(factor);
  //println(factor);
  //float total =

  translate(width/2, height/2);
  stroke(255);
  noFill();
  circle(0, 0, r*2);

  for (int i =0; i < total; i++)
  {
    PVector v = getVector(i);

    fill(255);
    circle(v.x, v.y, 4);
  }

  for (int i = 0; i < total; i ++)
  {

    stroke(i, i, 360);
    strokeWeight(1);
    PVector a = getVector(i);
    PVector b = getVector(i * factor);
    line(a.x, a.y, b.x, b.y);
  }
}
