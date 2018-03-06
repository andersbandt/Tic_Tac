public class Board{
 private float xLoc;
 private float yLoc;
 private float cellSize;
 private int rows;
 private int cols;
 private Cell[][] theBoard;
 
 public Board(){
   xLoc = 0;
   yLoc = 0;
   cellSize = 50; 
   rows = cols = 3;
   // initalize theBoard
   
   // fill theBoard with the appropriate Cell objects


 }

 // In your parameterized constructor, set the location of the board 
 // so it is not always in the top left corner.
  public Board(float xLoc, float yLoc){

 }
 
 public void display(){
   // loop through each Cell in theBoard and call the Cell display function
 }
 
 // include the following getter methods
     // getBoard()
     // getRows()
     // getCols()
  
}