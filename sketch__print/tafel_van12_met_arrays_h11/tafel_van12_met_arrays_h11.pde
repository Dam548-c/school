int[] mijngetallen = new int[12];

void setup(){
  for(int i = 0; i < mijngetallen.length; i++){
    mijngetallen[i] = 12+i*12;
  }
  for(int i = 0; i < mijngetallen.length; i++){
    println(mijngetallen[i]);
  }
}
