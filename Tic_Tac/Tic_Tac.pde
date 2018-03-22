
private Board playBoard;
private Reset reset;
public int player = 0;
private int holder = 0;
private int count1 = 0;
private int count2 = 0;
private boolean show1 = false;
private boolean show2 = false;
private int win1 = 0;
private int win2 = 0;


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
  textSize(14);
  text("Player 1:" + win1, 100, 100);
  textSize(14);
  text("Player 2:" + win2, 300, 100);
  if (show1) {
    reset.player1();
    reset.newGame();
    win1++;
  }
  else if (show2) {
    reset.player2();
    reset.newGame();
    win2++;
}
if (tie()) {
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
  
  check(); //runs the check method each time
  
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
        print("Player 1 wins");
        show1 = true;
      }
      else if (count2 == 3) {
        print("Player 2 wins");
        show2 = true;
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
        print("Player 1 winz");
        show1 = true;
      }
      else if (count2 == 3) {
        print("Player 2 winz");
        show2 = true;
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
        print("Player 1 winx");
        show1 = true;
      }
      else if (count2 == 3) {
        print("Player 2 winx");
        show2 = true;
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
        print("Player 1 winv");
        show1 = true;
      }
      else if (count2 == 3) {
        print("Player 2 winv");
        show2 = true;
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
  
  
  



      


  
  
