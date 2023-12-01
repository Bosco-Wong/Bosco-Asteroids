Spaceship dog = new Spaceship();
Star [] field = new Star[200];
ArrayList <Asteroid> shower = new ArrayList <Asteroid>();

void setup(){
 background(0);
 size(800,800);
 
 for(int x = 0; x < field.length; x++){
 field[x] = new Star();
 }
 
 for(int x  = 0; x < 45; x++)
 shower.add(new Asteroid());
}

void draw(){
  background(0);
  
 
   if(keyPressed)
  if(key == 'w' || key == 'W')
   dog.accelerate(0.1);
  
  if(keyPressed)
  if(key == 's' || key == 'S')
   dog.accelerate(-0.1);
   
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
  
  
  
  for(int x = 0; x < shower.size();x++){
    shower.get(x).show();
    shower.get(x).move();
    float d = dist((float)shower.get(x).getX(), (float)shower.get(x).getY(), (float)dog.getX(), (float)dog.getY());
   if (d < 20)
   shower.remove(x);
   if(shower.size()<20)
   shower.add(new Asteroid());
  }

  
  
  
  dog.show();
  textSize(20);
  text("my center x" + dog.getX(),0,20);
  text("my center y" + dog.getY(),0,40);
  text("my x speed" + dog.getmyXspeed(), 0, 60);
  text("my y speed" + dog.getmyYspeed(), 0, 80);
  text("Asteroids Present" + shower.size(), 0, 100);
}




