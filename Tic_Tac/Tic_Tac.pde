
private Board playBoard;
private Reset reset;
public int player = 0;
private int holder = 0;
private int count1 = 0;
private int count2 = 0;
private boolean show1 = false;
private boolean show2 = false;
private boolean execute1 = false;
private boolean execute2 = false;





public void settings(){
  size(600, 600); 
}

public void setup() {
  playBoard = new Board(187.5,187.5);
  reset = new Reset();
  
}

public void draw() {
  background(255,119,89); //sets background color
  playBoard.display(); //displays the board
  reset.display(); //displays the reset button
  fill(0,0,0);
  fill(20,20,20);
  
 
  if (show1) {
    reset.player1();
    reset.newGame();
    if (execute1) {
      reset.win1++;
      execute1 = false;
    }
  }
  else if (show2) {
    reset.player2();
    reset.newGame();
    if (execute2) {
      reset.win2++;
      execute2 = false;
    }
}
if (tie() && (show1 == false && show2 ==false)) {
  reset.tie();
}
}


void mousePressed(){
  if (!show1 && !show2) {
  for (int i = 0; i < playBoard.getRows(); i++) { //loops through each cell and calls the 
    for (int j = 0; j < playBoard.getCols(); j++) { //click function on them
      playBoard.getBoard()[i][j].click(mouseX, mouseY);
    }
  }
  check();
  }
  
  if (mouseX > 250 && mouseX < 350) { //checks the mouse position in the x direction
     if (mouseY > 500 && mouseY < 550) { //checks the mouse position in the y direction
    for (int i = 0; i < playBoard.getRows(); i++) { //loops through each cell and calls the 
    for (int j = 0; j < playBoard.getCols(); j++) { //click function on them
      playBoard.getBoard()[i][j].clean(); //changes the state of each cell to 0
    }
  } 
  }
  show1 = false; //resets the winner state of the board
  show2 = false;
  }
  

} //end of mousePressed method


public void check() { //method to check if there is a winner
  for (int i = 0; i <3; i++) { //start of the for loop to check if there is a column winner
    count1 = 0;
    count2 = 0;
    for (int j = 0; j < 3; j++) { //iterates 
      holder = playBoard.getBoard()[i][j].checkState();
      if (holder == 1) { 
        count1++;
      }
      else if (holder == 2) {
        count2++;
      }
      
      if (count1 == 3) {
        show1 = true;
        execute1 = true;
      }
      else if (count2 == 3) {
        show2 = true;
        execute2 = true;
      }
    }
     
  }
  
  for (int i = 0; i <3; i++) { //start of the for loop to check if there is a row winner
    count1 = 0;
    count2 = 0;
    for (int j = 0; j < 3; j++) { //iterates 
      holder = playBoard.getBoard()[j][i].checkState();
      if (holder == 1) { 
        count1++;
      }
      else if (holder == 2) {
        count2++;
      }
      
      if (count1 == 3) {
        show1 = true;
        execute1 = true;
      }
      else if (count2 == 3) {
        show2 = true;
        execute2 = true;
      }
    }
    
    count1 = 0;
    count2 = 0;
    for (int k = 0; k <3; k++) { //start of the for loop for the upper left to lower right diagonal
      holder = playBoard.getBoard()[k][k].checkState();
      if (holder == 1) { 
        count1++;
      }
      else if (holder == 2) {
        count2++;
      }
      
      if (count1 == 3) {
        show1 = true;
        execute1 = true;
      }
      else if (count2 == 3) {
        show2 = true;
        execute2 = true;
      }
    }
    
    count1 = 0;
    count2 = 0;
     for (int k = 0; k <3; k++) { //start of the for loop for the upper right to lower left diagonal
      holder = playBoard.getBoard()[2-k][k].checkState();
      if (holder == 1) { 
        count1++;
      }
      else if (holder == 2) {
        count2++;
      }
      
      if (count1 == 3) {
        show1 = true;
        execute1 = true;
      }
      else if (count2 == 3) {
        show2 = true;
        execute2 = true;
      }
    }
  }
  
} //close of the check method

public boolean tie() {
  int fake;
  for (int i = 0; i < playBoard.getRows(); i++) { //loops through each cell and calls the 
    for (int j = 0; j < playBoard.getCols(); j++) { //click function on them
      fake = playBoard.getBoard()[i][j].checkState();
      if (fake == 0) {
        return false;
      }
    }
  }
  return true;
}//end of tie method


  
  
  



      


  
  