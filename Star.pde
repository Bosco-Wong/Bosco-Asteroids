class Star {
  private int myX, myY, mySize, myColor1, myColor2, myColor3;
   public Star(){
     myX = (int)(Math.random()*800)+1;
     myY = (int)(Math.random()*800)+1;
     mySize = (int)(Math.random()*5)+1;
     myColor1 = (int)(Math.random()*255)+1;
     myColor2 = (int)(Math.random()*255)+1;
     myColor3 = (int)(Math.random()*255)+1;
     
    
  }
  
  public void show(){
    noStroke();
    fill(myColor1, myColor2, myColor3);
    ellipse(myX,myY,mySize,mySize);
  }
  
}
