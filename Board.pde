
public class Board{
 private float xLoc;
 private float yLoc;
 private float cellSize;
 private int rows;
 private int cols;
 
 // Has-a
 private Cell[][] theBoard;
 
 public Board(){
   xLoc = 0;
   yLoc = 0;
   cellSize = 50; 
   rows = cols = 3;
   theBoard = new Cell[rows][cols];  //initializes the board
   for(int i = 0; i < theBoard.length; i++){   //fills the board with Cell objects
     for(int j = 0; j < theBoard[i].length; j++){
        theBoard[i][j] = new Cell(i*cellSize, j*cellSize, cellSize, cellSize);   
     }
   }
 }

 // In your parameterized constructor, set the location of the board 
 // so it is not always in the top left corner.
  public Board(float xLoc, float yLoc){
   this.xLoc = xLoc;
   this.yLoc = yLoc;
   cellSize = 75; 
   rows = cols = 3;
   theBoard = new Cell[rows][cols];  //initializes the board
   for(int i = 0; i < theBoard.length; i++){   //fills the board with Cell objects
     for(int j = 0; j < theBoard[i].length; j++){
        theBoard[i][j] = new Cell(xLoc+i*cellSize,yLoc+ j*cellSize, cellSize, cellSize);   
     }
   }
 }
 
 public void display(){
   // loop through each Cell in theBoard and call the Cell display function
   for(int i = 0; i < theBoard.length; i++){
     for(int j = 0; j < theBoard[i].length; j++){
        theBoard[i][j].display();   
     }
   }
 
 }
 
     public Cell[][] getBoard() {
       return theBoard;
     }
     
     public int getRows() {
       return rows;
     }
     
     public int getCols() {
       return cols;
     }
     
     public void clear() {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      theBoard[i][j].clean();
    }
  }
}


}