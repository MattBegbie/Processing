class cubie {
  PMatrix3D matrix;
  int x = 0;
  int y = 0;
  int z = 0;
  color colour;
  Face[] faces = new Face[6];


  cubie(PMatrix3D m, int x, int y, int z) {
    this.matrix = m;
    this.x = x;
    this.y = y;
    this.z = z;
    colour = color(255);

    faces[0] = new Face(new PVector(0, 0, -1), colours[3]); //back orange
    faces[1] = new Face(new PVector(0, 0, 1), colours[2]); //front red
    faces[2] = new Face(new PVector(0, 1, 0), colours[4]); //bottom green
    faces[3] = new Face(new PVector(0, -1, 0), colours[5]); //top blue
    faces[4] = new Face(new PVector(1, 0, 0), colours[1]); // right yellow 
    faces[5] = new Face(new PVector(-1, 0, 0), colours[0]); //left white
  }

  void turnFacesZ(int dir) {
    for (Face f : faces) {
      f.turnZ(dir*HALF_PI);
    }
  }
  void turnFacesY(int dir) {
    for (Face f : faces) {
      f.turnY(dir*HALF_PI);
    }
  }
  void turnFacesX(int dir) {
    for (Face f : faces) {
      f.turnX(dir*HALF_PI);
    }
  }




  void update(int x, int y, int z) {
    matrix.reset();
    matrix.translate(x, y, z);
    this.x = x;
    this.y = y;
    this.z = z;
  }
  void show() {
    //fill(colour);
    noFill();
    stroke(0);
    strokeWeight(0.1);
    pushMatrix();
    applyMatrix(matrix);
    box(1);
    for (Face f : faces) {
      f.show();
    }
    popMatrix();
  }
}
