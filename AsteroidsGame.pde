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






