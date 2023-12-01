
public class Asteroid extends Floater{
  private double rotateValue;
  Asteroid(){
    
     corners = 9; 
     xCorners = new int [corners];
     yCorners = new int [corners];
     
     xCorners [0] = 8;
     yCorners[0]= 0;
     xCorners [1]= 7;
     yCorners[1]= 4;
     xCorners [2]= 0;
     yCorners[2]= 6;
     xCorners [3]= -5;
     yCorners[3]= 8;
     xCorners [4]= -8;
     yCorners[4]=3;
     xCorners [5]= -7;
     yCorners[5]= -1;
     xCorners [6]= 0;
     yCorners[6]= -6;
     xCorners [7]= 5;
     yCorners[7]= -6;
     xCorners [8]= 9;
     yCorners[8]= 0;
     
     rotateValue = (Math.random()*20)-10;
     myCenterX = (int)(Math.random()*800);
     myCenterY = (int)(Math.random()*800);
     myColor = 255;
     myXspeed = Math.random()*4-2;
     myPointDirection = Math.random()*360;
     myYspeed = Math.random()*4-2;
    
  }
 public void move(){
    super.move();
    myPointDirection+= rotateValue;
   
  }
    
  
  public double getX(){
  return myCenterX;
  }

public double getY(){
  return myCenterY;
  }
  
}
