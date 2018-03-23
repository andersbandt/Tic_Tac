public class Reset {
  private int xLoc = 250;
  private int yLoc = 500;
  private int xHeight = 100;
  private int yHeight = 50;
  private int win1 = 0;
  private int win2 = 0;
  
  public Reset() {
  }
  
  public void display() {
    fill(194,255,89);
    rect(xLoc, yLoc, xHeight, yHeight);
    fill(255,89,194);
    textSize(28);
    text("RESET", xLoc+10, yLoc+35);
    fill(0,0,0);
    textSize(14);
    text("O's:" + win1 + " wins", 100, 100);
    text("X's:" + win2 + " wins", 400, 100);
    
  }
  
  public void player1() {
    textSize(28);
    text("O's win!!!", 227, 100);
  }
  
  public void player2() {
    textSize(28);
    text("X's win!!!", 227, 100);
  
}

 public void newGame() {
   fill(194,255,89);
    rect(xLoc, yLoc, xHeight, yHeight);
    fill(255,89,194);
    textSize(14);
    text("New Game?", xLoc+10, yLoc+30);
 }
 
 public void tie() {
   textSize(28);
    text("It's a draw", 220, 100);
 }
   
  
 
  
    
    
  
  
  
  
  
  
  
  
  
  
  
  
  
}