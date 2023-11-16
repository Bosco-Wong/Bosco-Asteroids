Spaceship dog = new Spaceship();
Star [] field = new Star[200];

void setup(){
 background(0);
 size(800,800);
 
 for(int x = 0; x < field.length; x++){
 field[x] = new Star();
 }
 
}

void draw(){
  background(0);
  dog.show();
  if(keyPressed)
  if(key == 'w' || key == 'W')
   dog.accelerate(0.2);
  if(keyPressed)
  if(key == 's' || key == 'S')
   dog.accelerate(-0.2);
   
   //accelerate forwards or backwards based on keypressed
   
   
  if(keyPressed)
  if(key == 'a' || key == 'A')
  dog.turn(-4);
  
  if(keyPressed)
  if(key == 'd' || key == 'D')
  dog.turn(4);
  
  dog.move();
  dog.hyperSpace();
 for(int x = 0; x < field.length; x++){
   field[x].show();
 }
  
}





class Floater //Do NOT modify the Floater class! Make changes in the Spaceship class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myXspeed, myYspeed; //holds the speed of travel in the x and y directions   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myXspeed += ((dAmount) * Math.cos(dRadians));    
    myYspeed += ((dAmount) * Math.sin(dRadians));       
  }   
  public void turn (double degreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=degreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
} 


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
