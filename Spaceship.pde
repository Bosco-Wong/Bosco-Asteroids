
class Spaceship extends Floater  
{   
   public Spaceship() {
     myXspeed = 5;
     myPointDirection = 0;
     myCenterX = 400;
     myCenterY = 400;
     myColor = 255;
     corners = 7; 
     xCorners = new int [corners];
     yCorners = new int [corners];
     xCorners[0] = 16;
     yCorners[0] = 0;
     xCorners[1] = 0;
     yCorners[1] = 8;
     xCorners[6] = 0;
     yCorners[6] = -8;
     xCorners[2] = -4;
     yCorners[2] = 4;
     xCorners[5] = -4;
     yCorners[5] = -4;
     xCorners[3] = -10;
     yCorners[3] = 9;
     xCorners[4] = -10;
     yCorners[4] = -9;

     
}

public void hyperSpace(){
  if(keyPressed)
  if(key == 'e' || key == 'E'){
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
    delay(200);
  }
  
}


}
