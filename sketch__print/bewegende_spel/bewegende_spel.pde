int x = 0;

void setup(){
  size(500,500);
}

void draw(){
  background(100,100,100,100);
  for(int i = 1; i < 6; i = i + 1){
    line(0, i * 80, width, i * 80);
  }
  
  x = x + 1;
  //rect(0,170+10, 40, 80-20);
  rect(x,170,40,60);
}
