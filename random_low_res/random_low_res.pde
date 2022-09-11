void setup(){
  size(220,220);
  background(0);
  for(int i=0;i<10;i++){
    for(int j=0;j<10;j++){
      stroke(random(255),random(255),random(255));
      point(i,j);
    }
  }
  image(get(0,0,10,10),0,0,width,height);
}

void draw(){}
