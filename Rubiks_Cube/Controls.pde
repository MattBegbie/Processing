void keyPressed() {
  //forward cases
  switch(key) {
  case '1':
    turnZ(-1, 1); //back of the cube
    break;
  case '2':
    turnZ(0, 1); // between face and back
    break;    
  case 'F':
    turnZ(1, 1); //F
    break;
  case 'f':
    turnZ(1, -1); //F'
    break;
  case 'L':
    turnX(-1, -1); //L
    break;
  case 'l':
    turnX(-1, 1); //L'
    break;
  case 'M':
    turnX(0, 1); //M
    break;
  case 'm':
    turnX(0, -1); //M'
    break;
  case 'R':
    turnX(1, 1); //R
    break;
  case 'r':
    turnX(1, -1); //R'
    break;
  case 'U':
    turnY(-1, 1); // U
    break;
  case 'u':
    turnY(-1, -1); // U'
    break;
  case '8':
    turnY(0, 1); //horizontal middle slice
    break;
  case 'b':
    turnY(1, 1); //B'
    break;
  case 'B':
    turnY(1, -1); //B
    break;
  }
}

void shuffle() {
  String[] notation = {"u", "l", "r", "m", "b", "f"};
  int shufSize = 10;
  String shuffle = "";
  for (int i = 0; i < shufSize; i++) {
    float index = random(6);
    shuffle = shuffle + convertCase(notation[int(index)]);
  }
  print(shuffle);
  runFormula(shuffle);
}

String convertCase(String character) {
  float randomNum = random(2);
  if (randomNum > 1) {
    character = character.toUpperCase();
  }
  return character;
}

void runFormula(String moves) {
  print("\n");
  for (int i = 0; i < moves.length(); i++ ) {
    switch(moves.charAt(i)) {
    case '1':
      turnZ(-1, 1); //back of the cube
      print("moved back of cube");
      break;
    case '2':
      turnZ(0, 1); // between face and back
      print("moved between face and back");
      break;    
    case 'F':
      turnZ(1, 1); //F
      print("\nmoved F");
      break;
    case 'f':
      turnZ(1, -1); //F'
      print("\nmoved F\'");
      break;
    case 'L':
      turnX(-1, -1); //L
      print("\nmoved L");
      break;
    case 'l':
      turnX(-1, 1); //L'
      print("\nmoved L\'");
      break;
    case 'M':
      turnX(0, 1); //M
      print("\nmoved M");
      break;
    case 'm':
      turnX(0, -1); //M'
      print("\nmoved M\'");
      break;
    case 'R':
      turnX(1, 1); //R
      print("\nmoved R");
      break;
    case 'r':
      turnX(1, -1); //R'
      print("\nmoved R\'");
      break;
    case 'U':
      turnY(-1, 1); // U
      print("\nmoved U");
      break;
    case 'u':
      turnY(-1, -1); // U'
      print("\nmoved U\'");
      break;
    case '8':
      turnY(0, 1); //horizontal middle slice
      break;
    case 'b':
      turnY(1, 1); //B'
      print("\nmoved B\'");
      break;
    case 'B':
      turnY(1, -1); //B
      print("\nmoved B");
      break;
    }
  }
}

/*moves
 U or U'
 B or b'
 L or L'
 R or R'
 M or M' 
 F or F'
 */
