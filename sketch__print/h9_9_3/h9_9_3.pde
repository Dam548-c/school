int mijngetal = 3;

void setup(){
  mijnmethode(mijngetal, 9);
  mijnmethode(mijngetal, 19);
}

void draw(){
  
}

void mijnmethode(int getal, int getaltwee){
  int totaal = getal + getaltwee;
  println("som" + getal + " " + getaltwee + " " + totaal);
  
}
