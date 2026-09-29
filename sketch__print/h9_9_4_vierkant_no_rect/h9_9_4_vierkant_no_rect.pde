
void setup(){
tekenVierkant(100, 100, 200, 200);
}

void draw(){
  
}

void tekenVierkant(int x, int y, int breedte, int hoogte){
   line(x, y, x + breedte, y);
  line(x + breedte, y, x + breedte, y + hoogte);
  line(x + breedte, y + hoogte, x, y + hoogte);
  line(x, y + hoogte, x, y);
}
