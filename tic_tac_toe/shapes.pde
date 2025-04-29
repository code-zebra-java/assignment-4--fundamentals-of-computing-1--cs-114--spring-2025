//This splits the canvas into 9 squares
void drawBoard(){
  fill(21,189,189);
  for(int i = 0; i<3; i++){
    for(int j = 0; j<3; j++){
      square((SQUARESIZE*j), (SQUARESIZE*i), SQUARESIZE);
    }
  }
}

//This method draws an X in the box specified by the column and row numbers
void drawX(float columnNum, float rowNum){
  line((columnNum+40), (rowNum+40), (columnNum+SQUARESIZE-40), (rowNum+SQUARESIZE-40));
  line((columnNum+SQUARESIZE-40), (rowNum+40), (columnNum+40), (rowNum+SQUARESIZE-40));
}

//This method draws an O in the box specified by the column and row numbers
void drawO(float columnNum, float rowNum){
  circle((columnNum+HALFOFSQUARESIZE), (rowNum+HALFOFSQUARESIZE), RADIUSOFO);
}
