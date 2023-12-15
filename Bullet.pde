class Bullet extends Floater{
  public Bullet(Spaceship spaceship){
  myCenterX = spaceship.getX();
  myCenterY = spaceship.getY();
  myPointDirection = spaceship.myPointDirection;
}
  public void show(){
    fill(255,0,0,10);
    ellipse((float)myCenterX,(float)myCenterY, 5, 5);
    accelerate(1);
    
  }
 

 public double getmyX(){
   return myCenterX;
 }
 
 public double getmyY(){
   return myCenterY;
 }
 
 public double getmyXspeed(){
   return myXspeed;
 }
 
 public double getmyYspeed(){
   return myYspeed;
 }
 
  }
