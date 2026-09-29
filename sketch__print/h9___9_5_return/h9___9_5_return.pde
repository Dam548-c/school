//opdraxcht 9.5 H9

void setup(){
  String resultaat = mijnmethode(" hallo", "ik", "ben", "damian");
  println(resultaat);
}
String mijnmethode(String tekst1, String tekst2, String tekst3, String tekst4) {
  String totaal = tekst1 + tekst2 + tekst3 + tekst4;
  return totaal;
}
