int x = 2;
int xkikker;
int ykikker = 600;


void setup(){
  size(500,500);
}

void draw(){
  background(100,100,100,100);
 
  if (keyPressed) {
    if (keyCode == UP) {
      println("UP!");
      ykikker=ykikker-5;
    }
    
    else if(keyCode == DOWN) {
      
    }
    else if(keyCode == LEFT) {
      
    }
    
     else if(keyCode == RIGHT) {
      
    }
  }
  println(ykikker);
  
  
  
  circle(width/2, ykikker, 100);
  x = x + 2;
  //rect(0,170+10, 40, 80-20);
  rect(x,170,40,60);
   for(int i = 1; i < 6; i = i + 1){
    line(0, i * 80, width, i * 80);
}
