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


int temperatuurCelsius = 24;

if(temperatuurCelsius > 25 && temperatuurCelsius < 30){
  println("warm");
}
