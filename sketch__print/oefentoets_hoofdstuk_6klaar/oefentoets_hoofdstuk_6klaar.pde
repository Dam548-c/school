String automerk = "Mclaren";
int leefttijd = 17;
int resultaat = 20 / 4;
println("dat is vast een dure auto");


int leeftijd = 1;

if(leeftijd < 1){
  println("baby");
}

else if(leeftijd <= 2){
  println("dreumes");
}

else if(leeftijd <=4){
  println("peuter");
}

else if(leeftijd <=6){
  println("kleuter");
}


boolean A = false;
boolean B = true;
println( A || B);

boolean a = true;
boolean b = false;
println( a && b);

boolean a3 = true;
boolean b3 = false;
println( a3 && b3);

boolean a4 = true;
boolean b4 = false;
println( a4 || b4);

println(3==3);
println(4<=5);
int a0 = 5;println(3 > a0);
println(a0 !=4);
println(2>1);

int a00 = 5;
println(a00 > 4 && false);
println(a00 >= 5 && a00 > 1);
println(a00 == 5 && 3 == 3);
println(a00 != 5 || 3 == 3);
println(5-1+3 == 3 || a00 == a00);

//Welke van deze expressies is true?//
boolean a90 = true && !true;
boolean b90 = !false || !true;
boolean c = true && false;
println("c");
boolean d = false || false || !true;


int TemperatuurCelsius = 24;

if(TemperatuurCelsius > 25 && TemperatuurCelsius < 30){
  println("warm");
}else if(TemperatuurCelsius >= 30){
  println("heet");
}else{
  println("Het is nu " + TemperatuurCelsius + " graden");
}


int speler1Score = 40;
int speler2Score = 80;

if(speler1Score > speler2Score){
  println("speler 1 heeft gewonnen");
}else if(speler2Score > speler1Score){
  println("speler 2 heeft gewonnen");
}else{ 
  println("het is gelijkspel");
}


int x = 12;
int y = 11;

if (x > 10) {
  x = x - 5;
  if (x > 10 || y <= 10) {
    x++;
    y++;
  }
  else {
    println("hier wil ik zijn");
  }
}


int steen1 = 4;
int steen2 = 5;
int steen3 = 3;

String resultaat1 = "";

if(steen1 == 1 && steen2 == 1 && steen3 == 1){
  resultaat1 = "Critical MISS!";
}
else if(steen1 == 6 && steen2 == 6 && steen3 == 6){
  resultaat1 = "WOW! Alle drie de dobbelstenen zijn 6!";
}
else if(steen1 == 1 || steen2 == 1 || steen3 == 1){
  resultaat1 = "mis!";
}
else{
  int schade = (steen1 + steen2 + steen3) / 3;
  resultaat1 = schade + " HIT!";
}

print(resultaat);


float cijfer = 7;
int gevolgdelessen = 17;
int totaalaantallessen= 20;

float percentagelessengevolgd = (float) gevolgdelessen/ totaalaantallessen * 100;

if(cijfer >= 5.5 && percentagelessengevolgd >= 80){
  println("geslaagd");
}else{
  println("gezakt");
}



float cijfer2 = 5.5;
int gevolgdelessen2 = 16;
int totaalaantallessen2= 20;

float percentagelessengevolgd2 = (float) gevolgdelessen2 / totaalaantallessen2 * 100;

if(cijfer >= 5.5 && percentagelessengevolgd >= 80){
  println("geslaagd");
}else{
  println("gezakt");
}
