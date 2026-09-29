int mijngetal = 8;

void setup(){
  mijnmethode(mijngetal, 6);
  mijnmethode(mijngetal, 26);
}

void draw(){
  
}

void mijnmethode(int getal, int getaltwee){
  int totaal = getal + getaltwee;
  println("som" + getal + " " + getaltwee + " " + totaal);
  
}
