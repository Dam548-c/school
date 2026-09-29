int[] mijngetallen = {5, 2, 8, 5, 3, 5, 9, 2, 7, 5}; 

void setup() {
  println(telHoeVaakGetalVoorkomt(5));
  println(telHoeVaakGetalVoorkomt(2));
}

int telHoeVaakGetalVoorkomt(int getal) {
  int aantal = 0;

  for (int i = 0; i < mijngetallen.length; i++) {
    if (mijngetallen[i] == getal) {
      aantal++;
    }
  }

  return aantal;
}
