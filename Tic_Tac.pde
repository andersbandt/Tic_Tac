
private Board playBoard;
private Reset reset;
public int player = 0;
private int counter = 0;


public void settings(){
  size(600, 600); 
}

public void setup() {
  playBoard = new Board(187.5,187.5);
  reset = new Reset();
  
}

public void draw() {
  background(255,75,64); //sets background color
  playBoard.display(); //displays the board
  reset.display(); //displays the reset button

}


void mousePressed(){
  for (int i = 0; i < playBoard.getRows(); i++) { //loops through each cell and calls the 
    for (int j = 0; j < playBoard.getCols(); j++) { //click function on them
      playBoard.getBoard()[i][j].click(mouseX, mouseY);
    }
  }
  counter += 1;
  if (counter == 10) {
    playBoard.clear();
    counter = 0;
  }
  
  
}

public boolean check() {
  for (int i = 0; i <3; i++) {
    int state = playBoard.getBoard()[0][i].checkState();
  }
  
  return false;
}


      


  
  
  
