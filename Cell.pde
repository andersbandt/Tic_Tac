public class Cell {
  // A cell object knows about its location in the grid 
  // as well as its size with the variables x,y,w,h
  // as well as it's state (O = empty, 1 = X, 2 = O)
  
  private float x,y;   // x,y location
  private float w,h;   // width and height
  private int state;

  // Cell Constructor
  public Cell(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
  } 
  
  
  public void click (int tx, int ty){
   int mx = tx;
   int my = ty;
   
   // checks to see if the cell was clicked.
   if(mx > x && mx< x + w && my > y && my < y + h){
     
     // Looks at who the player is and to see if the square is open
      if(player == 0 && state == 0){
         state = 1;
         player = 1;
         print("X at " + mouseX + "  " + mouseY);
      } else if(player == 1 && state ==0){
        state = 2;
        player = 0;
        print("O at " + mouseX + "  " + mouseY);
      }
   }
  }
   
   public void clean(){
    state = 0; 
   }
   
   public int checkState(){
     return state;
   }
   
   public float checkX(){
     return x;
   }
   
   public float checkY(){
     return y;
   }
   

  public void display() {
    stroke(255);
    fill(0,255,173);
    rect(x,y,w,h); 
    if (state == 1 ){ // makes an 0
       ellipseMode(CORNER);
       stroke(100);
       ellipse(x, y, w, h);
    } else if (state == 2){ // makes an X
      stroke(100);
      line(x, y, x+w, y+h);
      line(x+w, y, x, y+h);
    }
    
  }
  
}

/*

Extensions include: 
-- Create AI - play the computer
-- Check to see if it is done.

Other grid based games
-- Connect 4
-- Bloons
-- 


*/

  