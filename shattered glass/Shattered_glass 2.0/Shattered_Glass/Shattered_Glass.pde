//Shattered Glass 2.0
/*
TO DO
 keep it from going back - if going backwards kill generation
 only let one child go in a direction
 fill in some shapes
 make sure the first line has children
 
 */


void setup() {
  size(1000, 1000);
}

color[] colours = { #454545, #539987, #52FFB8, #4DFFF3, #7067CF}; //Pallete lowkey depricated now but still useful if i want other colours
color[] lifeC = {#539987, #54978A, #55968C, #56948F, #579291, #589094, #598F96, #5A8D99, #5B8B9C, #5C899E, #5D87A1, #5F86A3, #6084A6, #6182A8, #6280AB, #637EAE, #647DB0, #657BB3, #6679B5, #6777B8, #6876BA, #6974BD, #6A72C0, #6B70C2, #6C6EC5, #6D6DC7, #6E6BCA, #6F69CC, #7067CF, #000000};
//there was supposed to be a single colour for every generation but there ended up being one less colour so screw it, death is not in the gradient anymore
int offset = 50; 
int cols = 1000/50;
int rows = 1000/50;
boolean[][] usedCords = new boolean[cols + 2][rows + 2];


void makeBoolNeg() {
  print("C", cols, "r", rows );
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      usedCords[i][j] = false;
    }
    print("\n");
  }
}

void draw() {
  //makeBoolNeg();
  print(lifeC.length);
  background(colours[0]);
  stroke(colours[1]);
  strokeWeight(5);
  dLine(0, 0, 0, 0);
  noLoop();
}

void dLine(int OX, int OY, int dir, int currGen) {
  if (currGen < 30) {
    stroke(lifeC[currGen]);
    currGen++;
    int NX = 0;
    int NY = 0;
    int CX = 0;
    int CY = 0;
    print("direction is ", dir, " generation is ", currGen, "Coordinates are", OX, " ", OY, "\n");
    if ((OX >= 0) && (OY >= 0) && (OX <= 1000) && (OY <= 1000)) {

      if (dir == 0) {  //down, right
        NX = OX + offset;
        NY = OY + offset;
      } else if (dir == 1) { // up, right
        NX = OX + offset;
        NY = OY - offset;
      } else if (dir == 2) { //down, left
        NX = OX - offset;
        NY = OY + offset;
      } else if (dir == 3) { //right
        NX = OX + offset;
        NY = OY;
      } else if (dir == 4) { //down // this direction is cancelled 
        NX = OX;
        NY = OY + offset;
      }

      if (NX < 0) {
        NX = 0;
      }
      if (NY < 0) {
        NY = 0;
      }


      CX = NX/offset; //for the coordinate check
      CY = NY/offset;
      line(OX, OY, NX, NY);
      //choose a direction for each baby and stop it from having more kids if it has already been to that space
      if (usedCords[CX][CY] == false) {
        int children = int(random(5)); //decide how many children each line will have
        for ( int i = 0; i < children; i++) {
          //make sure every child is going in a unique direction. make a list of directions before loop
          int ND = int(random(4));
          usedCords[CX][CY] = true;
          dLine(NX, NY, ND, currGen);
        }
      }
    }
  } else {
    print("Gen killed at ", currGen, "\n");
  }
}

void keyPressed() {
  if (key == CODED) {
    {
      if (keyCode == UP){
        saveFrame("SS-#######.png"); //right now the screenshot overwrites the last one rather than making a new one, but the focus of the program wasnt on that so meh. just rerun this 
      }
    }
  }
}
