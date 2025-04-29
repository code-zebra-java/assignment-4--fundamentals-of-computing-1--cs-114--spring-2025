//all variables used in this files
boolean BOX0 = true;
boolean BOX1 = true;
boolean BOX2 = true;
boolean BOX3 = true;
boolean BOX4 = true;
boolean BOX5 = true;
boolean BOX6 = true;
boolean BOX7 = true;
boolean BOX8 = true;
boolean gameOver = false;

char [][] plays = new char [3][3];

int counter = 0;

//detects keys that are pressed while the game is still in play
void keyPressed(){
  if (gameOver == false){
    userPlay(key);
    println("The game is still in play");
  }
  else{
    println("Game is Over");
  }
}

//This plays for the user while keeping track of the filled boxes
void userPlay(char boxNum){
  if (boxNum == '0' && BOX0 == true){
    drawO(COLUMN1X,ROW1Y);
    BOX0 = false;
    plays[0][0] = 'O';
    ++counter;
    checkWin();
    computerPlay();
  }
  else if (boxNum == '1' && BOX1 == true){
    drawO(COLUMN2X,ROW1Y);
    BOX1 = false;
    plays[0][1] = 'O';
    ++counter;
    checkWin();
    computerPlay();
  }
  else if (boxNum == '2' && BOX2 == true){
    drawO(COLUMN3X,ROW1Y);
    BOX2 = false;
    plays[0][2] = 'O';
    ++counter;
    checkWin();
    computerPlay();
  }
  else if (boxNum == '3' && BOX3 == true){
    drawO(COLUMN1X,ROW2Y);
    BOX3 = false;
    plays[1][0] = 'O';
    ++counter;
    checkWin();
    computerPlay();
  }
  else if (boxNum == '4' && BOX4 == true){
    drawO(COLUMN2X,ROW2Y);
    BOX4 = false;
    plays[1][1] = 'O';
    ++counter;
    checkWin();
    computerPlay();
  }
  else if (boxNum == '5' && BOX5 == true){
    drawO(COLUMN3X,ROW2Y);
    BOX5 = false;
    plays[1][2] = 'O';
    ++counter;
    checkWin();
    computerPlay();
  }
  else if (boxNum == '6' && BOX6 == true){
    drawO(COLUMN1X,ROW3Y);
    BOX6 = false;
    plays[2][0] = 'O';
    ++counter;
    checkWin();
    computerPlay();
  }
  else if (boxNum == '7' && BOX7 == true){
    drawO(COLUMN2X,ROW3Y);
    BOX7 = false;
    plays[2][1] = 'O';
    ++counter;
    checkWin();
    computerPlay();
  }
  else if (boxNum == '8' && BOX8 == true){
    drawO(COLUMN3X,ROW3Y);
    BOX8 = false;
    plays[2][2] = 'O';
    ++counter;
    checkWin();
    computerPlay();
  }
  else{
    println("Key value is not acceptable, or the corresponding box has been filled");
  }
}

//This randomizes the play for the computer
void computerPlay(){
  float rand;
  for(int i = 0; i<9; i++){
    //value is 8.4 in order to avoid the rounding being above 8
    rand = random(8.4);
    int boxNum = round(rand);

    //check through code, to avoid placing an X in an O spot
    if (boxNum == 0 && BOX0 == true){
      drawX(COLUMN1X,ROW1Y);
      plays[0][0] = 'X';
      BOX0 = false;
      ++counter;
      checkWin();
      return;
    }
    else if (boxNum == 1 && BOX1 == true){
      drawX(COLUMN2X,ROW1Y);
      plays[0][1] = 'X';
      BOX1 = false;
      ++counter;
      checkWin();
      return;
    }
    else if (boxNum == 2 && BOX2 == true){
      drawX(COLUMN3X,ROW1Y);
      plays[0][2] = 'X';
      BOX2 = false;
      ++counter;
      checkWin();
      return;
    }
    else if (boxNum == 3 && BOX3 == true){
      drawX(COLUMN1X,ROW2Y);
      plays[1][0] = 'X';
      BOX3 = false;
      ++counter;
      checkWin();
      return;
    }
    else if (boxNum == 4 && BOX4 == true){
      drawX(COLUMN2X,ROW2Y);
      plays[1][1] = 'X';
      BOX4 = false;
      ++counter;
      checkWin();
      return;
    }
    else if (boxNum == 5 && BOX5 == true){
      drawX(COLUMN3X,ROW2Y);
      plays[1][2] = 'X';
      BOX5 = false;
      ++counter;
      checkWin();
      return;
    }
    else if (boxNum == 6 && BOX6 == true){
      drawX(COLUMN1X,ROW3Y);
      plays[2][0] = 'X';
      BOX6 = false;
      ++counter;
      checkWin();
      return;
    }
    else if (boxNum == 7 && BOX7 == true){
      drawX(COLUMN2X,ROW3Y);
      plays[2][1] = 'X';
      BOX7 = false;
      ++counter;
      checkWin();
      return;
    }
    else if (boxNum == 8 && BOX8 == true){
      drawX(COLUMN3X,ROW3Y);
      plays[2][2] = 'X';
      BOX8 = false;
      ++counter;
      checkWin();
      return;
    }
    else{
    continue;
    }
  }
}

//Checks for wins in the game
void checkWin(){
  //Checks for wins vertically
  if(plays[0][0] == plays[1][0]&& plays[2][0] == plays[0][0] ){
    if (plays[0][0] == 'X'){
      println("Computer Wins!");
      gameOver = true;
    }else if (plays[0][0] == 'O'){
      println("User Wins!");
      gameOver = true;
    }
  }
  else if(plays[0][1] == plays[1][1]&& plays[2][1] == plays[0][1] ){
    if (plays[0][1] == 'X'){
      println("Computer Wins!");
      gameOver = true;
    }else if (plays[0][1] == 'O'){
      println("User Wins!");
      gameOver = true;
    }
  }
    else if(plays[0][2] == plays[1][2]&& plays[2][2] == plays[0][2] ){
    if (plays[0][2] == 'X'){
      println("Computer Wins!");
      gameOver = true;
    }else if (plays[0][2] == 'O'){
      println("User Wins!");
      gameOver = true;
    }
  }
  //Checks for wins horizontally
    else if(plays[0][0] == plays[0][1]&& plays[0][2] == plays[0][0] ){
    if (plays[0][0] == 'X'){
      println("Computer Wins!");
      gameOver = true;
    }else if (plays[0][0] == 'O'){
      println("User Wins!");
      gameOver = true;
    }
  }
  else if(plays[1][0] == plays[1][1]&& plays[1][2] == plays[1][0] ){
    if (plays[1][0] == 'X'){
      println("Computer Wins!");
      gameOver = true;
    }else if (plays[1][0] == 'O'){
      println("User Wins!");
      gameOver = true;
    }
  }
  else if(plays[2][0] == plays[2][1]&& plays[2][2] == plays[2][0] ){
    if (plays[2][0] == 'X'){
      println("Computer Wins!");
      gameOver = true;
    }else if (plays[2][0] == 'O'){
      println("User Wins!");
      gameOver = true;
    }
  }
  //checks for wins diagonally
  else if(plays[0][0] == plays[1][1]&& plays[2][2] == plays[0][0] ){
    if (plays[0][0] == 'X'){
      println("Computer Wins!");
      gameOver = true;
    }else if (plays[0][0] == 'O'){
      println("User Wins!");
      gameOver = true;
    }
  }
  else if(plays[0][2] == plays[1][1]&& plays[2][0] == plays[0][2] ){
    if (plays[0][2] == 'X'){
      println("Computer Wins!");
      gameOver = true;
    }else if (plays[0][2] == 'O'){
      println("User Wins!");
      gameOver = true;
    }
  }
  else if(counter == 8){
    println("Neither user nor computer wins.");
    gameOver = true;
  }
}
