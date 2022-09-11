import peasy.*;

//based off of coding rainbow cube series


PeasyCam cam;


color[] colours = {
  #FFFFFF, #FFFF00, //white, yellow
  #FF0000, #FFA500, // red, orange 
  #00FF00, #0000FF // green, blue
};

int dim = 3;
cubie[] cube = new cubie[dim*dim*dim];

void setup() {
  size(700, 700, P3D);
  cam = new PeasyCam(this, 400); 

  int index = 0;

  for (int x=-1; x <= 1; x++) {
    for (int y=-1; y <= 1; y++) {
      for (int z=-1; z <= 1; z++) {

        PMatrix3D matrix = new PMatrix3D();
        matrix.translate(x, y, z);

        cube[index] = new cubie(matrix, x, y, z);
        index++;
      }
    }
  }
 shuffle();
}

int index = 0;

void turnZ(int index, int dir) {
  for (int i = 0; i < cube.length; i++) {
    cubie qb = cube[i];
    if (qb.z == index) {
      PMatrix2D matrix = new PMatrix2D();
      matrix.rotate(dir*HALF_PI);
      matrix.translate(qb.x, qb.y);
      qb.update(round(matrix.m02), round(matrix.m12), round(qb.z));
      qb.turnFacesZ(dir);
    }
  }
}

void turnY(int index, int dir) {
  for (int i = 0; i < cube.length; i++) {
    cubie qb = cube[i];
    if (qb.y == index) {
      PMatrix2D matrix = new PMatrix2D();
      matrix.rotate(dir*HALF_PI);
      matrix.translate(qb.x, qb.z);

      qb.update(round(matrix.m02), qb.y, round(matrix.m12));
      qb.turnFacesY(dir);
    }
  }
}

void turnX(int index, int dir) {
  for (int i = 0; i < cube.length; i++) {
    cubie qb = cube[i];
    if (qb.x == index) {
      PMatrix2D matrix = new PMatrix2D();
      matrix.rotate(dir*HALF_PI);
      matrix.translate(qb.y, qb.z);

      qb.update(qb.x, round(matrix.m02), round(matrix.m12));
      qb.turnFacesX(dir);
    }
  }
}





void draw() {
  background(200);
  scale(50);
  for (int i=0; i < cube.length; i++) {
    cube[i].show();
  }
}




//in the end use different search algorithms to find most useful solves
