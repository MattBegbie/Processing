/* water droplet type thingy
 * inspired by pico8 demo waves.p8
 * by Zep
 *
 */
void setup()
{
  //fullScreen();
  colorMode(HSB, 360);
  size(900, 500);
  //frameRate(60);
}

int fc = 0;
void draw()
{
  int scale = 2;

  background(0);
  noFill();
  //stroke(140);
  //circle(width/2, height/2, width/2);
  //drop(width/(2*scale), mouseX, mouseY, 10, scale, fc);
  //float time = millis(); //had to add time function out here so that all waves have the same time (causes splits)
  drop(width/(2*scale), 0, 0-(height/2), 10, scale, fc);
  drop(width/(2*scale), width, 0-(height/2), 10, scale, fc);
  dropC(width/(2*scale), width, height*1.45, 10, scale, fc);
  dropC(width/(2*scale), 0, height*1.45, 10, scale, fc);
  noFill();
  //stroke(4);
  //circle(mouseX, mouseY, 5);
  if (fc>=180)
  {
    exit();
  }
  fc++;
  saveFrame("tancoswave/###.png");
}

void drop(float r, float xo, float yo, float h, float scale, float time)
{
  PVector P = new PVector(xo, yo);
  int col;
  xo -= r*scale;
  yo -= r*scale;
  //stroke(255);
  for (float y = -r; y <= r; y = y + 1)
  {
    for (float x = -r; x <= r; x = x + 2)
    {
      float dist = sqrt((x*x)+(y*y));
      col = int(dist);
      float z = tan(dist/5 - (time/10)) * h;
      //float z = tan(dist/10 - (second()/70)) * h;

      P.y= ((r+y-z)*scale)+yo;
      P.x= ((r+x)*scale)+xo;

      if ((P.x > 0) && (P.y > 0) && (P.x < width) && (P.y < height))
      { //only render inside screen
        if (dist > h && dist < h*100)
        {

          stroke(abs(x*y)%360, abs(y%360), 360);
          //print(col + " ");
          point(P.x, P.y);
        }
      }
      //circle(((r+x)*scale)+xo, ((r+y-z)*scale)+yo, 5);
    }
  }
}
void dropC(float r, float xo, float yo, float h, float scale, float time)
{
  PVector P = new PVector(xo, yo);
  int col;
  xo -= r*scale;
  yo -= r*scale;
  //stroke(255);
  for (float y = -r; y <= r; y = y + 1)
  {
    for (float x = -r; x <= r; x = x + 2)
    {
      float dist = sqrt((x*x)+(y*y));
      col = int(dist);
      float z = cos(dist/5 - (time/10)) * h;
      //float z = tan(dist/10 - (second()/70)) * h;

      P.y= ((r+y-z)*scale)+yo;
      P.x= ((r+x)*scale)+xo;

      if ((P.x > 0) && (P.y > 0) && (P.x < width) && (P.y < height))
      { //only render inside screen
        //if (dist > h && dist < h*100)
        {

          stroke(abs(x*y)%360, abs(y)%360, abs(y%360));
          //print(col + " ");
          point(P.x, P.y);
        }
      }
      //circle(((r+x)*scale)+xo, ((r+y-z)*scale)+yo, 5);
    }
  }
}
