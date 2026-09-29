boolean gevonden;
int[] leeftijden = {98, 14, 47, 8, 50};

int jongste = 150;
int oudste = 0;

//jongste//
//if(jongste >= 8){
 // jongste = 8;
//}

//oudste//
//if(oudste < 8){
  //oudste = 98;
//}
void setup() {
  gevonden = false;

for(int i = 0; i < leeftijden.length; i++){
  if(leeftijden[i] == 8){
    gevonden = true;
  }
}

    println(gevonden);
}
    
    
    
    
    
    
