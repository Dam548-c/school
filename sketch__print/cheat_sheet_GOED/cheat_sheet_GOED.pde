# 🟦 PROCESSING – COMPLETE TOETS CHEATSHEET

// =====================================================
// 1. BASISSTRUCTUUR
// =====================================================

```java
void setup() {
  size(500, 500);              // scherm 500 breed, 500 hoog
}

void draw() {
  // code hier wordt steeds opnieuw uitgevoerd
}
```

// `setup()` = wordt 1 keer uitgevoerd.
// `draw()` = wordt steeds opnieuw uitgevoerd.
// `size(breedte, hoogte)` = grootte van je scherm.

// =====================================================
// 2. COÖRDINATEN – HEEL BELANGRIJK
// =====================================================

```java
size(500, 500);
```

// Het scherm loopt van 0 t/m 500.
//
// (0,0) = linksboven
// x wordt groter → naar RECHTS
// y wordt groter → naar BENEDEN
//
// Midden van 500 × 500 = (250,250)

```text
(0,0) ----------------------------> X
  |
  |
  |
  |              (250,250)
  |
  |
  ↓
  Y
```

// Vier belangrijke plekken:

```text
(0,0)                  (500,0)
  +-----------------------+
  |                       |
  |                       |
  |       (250,250)       |
  |                       |
  |                       |
  +-----------------------+
(0,500)                (500,500)
```

// LINKS BOVEN  = kleine x + kleine y
// RECHTS BOVEN = grote x + kleine y
// LINKS ONDER  = kleine x + grote y
// RECHTS ONDER = grote x + grote y
// MIDDEN        = ongeveer (250,250)

// =====================================================
// 3. PUNT
// =====================================================

```java
point(250, 250);              // één punt op x=250, y=250
```

// point(x,y)

// =====================================================
// 4. LIJN
// =====================================================

```java
line(0, 0, 500, 500);
```

// line(x1,y1,x2,y2)
// Beginpunt = (x1,y1)
// Eindpunt  = (x2,y2)

// Horizontale lijn:

```java
line(0, 250, 500, 250);       // horizontaal door het midden
```

// Verticale lijn:

```java
line(250, 0, 250, 500);       // verticaal door het midden
```

// =====================================================
// 5. RECHTHOEK – RECT
// =====================================================

```java
rect(100, 100, 100, 50);
```

// rect(x, y, breedte, hoogte)
//
// BELANGRIJK:
// x,y = LINKSBOVENHOEK
// daarna = breedte, hoogte

// Rechthoek in het midden:

```java
rect(200, 200, 100, 100);
```

// Waarom 200?
// Scherm is 500.
// Midden = 250.
// Rechthoek is 100 breed.
// 250 - 50 = 200.

// Linksboven:

```java
rect(20, 20, 80, 80);
```

// Rechtsboven:

```java
rect(400, 20, 80, 80);
```

// Linksonder:

```java
rect(20, 400, 80, 80);
```

// Rechtsonder:

```java
rect(400, 400, 80, 80);
```

// =====================================================
// 6. CIRKEL / ELLIPSE
// =====================================================

```java
ellipse(250, 250, 100, 100);
```

// ellipse(x, y, breedte, hoogte)
//
// BELANGRIJK:
// x,y = MIDDENPUNT
// daarna = breedte, hoogte
//
// 100 × 100 = cirkel
// bijvoorbeeld 150 × 80 = ovaal

// Cirkel in het midden:

```java
ellipse(250, 250, 100, 100);
```

// Linksboven:

```java
ellipse(50, 50, 80, 80);
```

// Rechtsboven:

```java
ellipse(450, 50, 80, 80);
```

// Linksonder:

```java
ellipse(50, 450, 80, 80);
```

// Rechtsonder:

```java
ellipse(450, 450, 80, 80);
```

// =====================================================
// 7. DRIEHOEK
// =====================================================

```java
triangle(
  250, 100,
  150, 300,
  350, 300
);
```

// triangle(x1,y1,x2,y2,x3,y3)
// Je geeft 3 hoekpunten.

// Deze wijst OMHOOG:
//
//           (250,100)
//              /
//             / 
//            /   
//           /_____\
//    (150,300)  (350,300)

// =====================================================
// 8. OMGEKEERDE DRIEHOEK
// =====================================================

```java
triangle(
  150, 100,
  350, 100,
  250, 300
);
```

// Deze wijst OMLAAG:
//
// (150,100)--------- (350,100)
//       \             /
//        \           /
//         \         /
//          \       /
//           (250,300)

// =====================================================
// 9. DRIEHOEK LINKS / RECHTS
// =====================================================

// Driehoek links:

```java
triangle(
  50, 250,
  200, 150,
  200, 350
);
```

// Driehoek rechts:

```java
triangle(
  450, 250,
  300, 150,
  300, 350
);
```

// =====================================================
// 10. VORMEN COMBINEREN
// =====================================================

```java
void setup() {
  size(500, 500);

  ellipse(250, 250, 100, 100);    // cirkel midden
  rect(50, 50, 100, 100);         // rechthoek linksboven
  triangle(250, 100, 150, 300, 350, 300); // driehoek
}
```

// =====================================================
// 11. PRINTLN
// =====================================================

```java
println("Hallo");              // tekst printen
println(10);                   // getal printen
```

// `println()` = iets in de console zetten.

// =====================================================
// 12. VARIABELEN
// =====================================================

```java
int leeftijd = 17;             // heel getal
float snelheid = 2.5;          // kommagetal
String naam = "Damian";        // tekst
boolean klaar = true;          // true/false
```

// int = heel getal
// float = kommagetal
// String = tekst
// boolean = waar/niet waar

// Variabele veranderen:

```java
int getal = 5;

getal = 10;                    // getal is nu 10
```

// =====================================================
// 13. REKENEN
// =====================================================

```java
int a = 10;
int b = 3;

println(a + b);                // optellen
println(a - b);                // aftrekken
println(a * b);                // vermenigvuldigen
println(a / b);                // delen
println(a % b);                // rest van deling
```

// `%` = modulo = rest van een deling.
// 10 % 3 = 1

// =====================================================
// 14. STRING EN CONCATENATIE
// =====================================================

```java
String naam = "Damian";
String zin = "Hallo " + naam;

println(zin);
```

// `+` plakt Strings aan elkaar.
// Dit heet concatenatie.

// String + int:

```java
int leeftijd = 17;

println("Ik ben " + leeftijd + " jaar oud.");
```

// =====================================================
// 15. INT NAAR STRING
// =====================================================

```java
int getal = 5;

String tekst = str(getal);

println(tekst);
```

// `str()` = waarde omzetten naar String.

// =====================================================
// 16. IF
// =====================================================

```java
int leeftijd = 17;

if (leeftijd >= 18) {
  println("Volwassen");
}
```

// if = code uitvoeren als voorwaarde TRUE is.

// =====================================================
// 17. IF / ELSE
// =====================================================

```java
int cijfer = 7;

if (cijfer >= 6) {
  println("Voldoende");
} else {
  println("Onvoldoende");
}
```

// if = waar
// else = niet waar

// =====================================================
// 18. ELSE IF
// =====================================================

```java
int leeftijd = 17;

if (leeftijd < 5) {
  println("Kleuter");
} else if (leeftijd < 12) {
  println("Kind");
} else if (leeftijd < 18) {
  println("Tiener");
} else {
  println("Volwassene");
}
```

// Processing stopt bij de EERSTE voorwaarde die TRUE is.

// =====================================================
// 19. VERGELIJKINGEN
// =====================================================

a == b       // gelijk aan
a != b       // niet gelijk aan
a > b        // groter dan
a < b        // kleiner dan
a >= b       // groter of gelijk
a <= b       // kleiner of gelijk

// BELANGRIJK:
//
// =   → waarde geven
// ==  → vergelijken

// =====================================================
// 20. AND – &&
// =====================================================

```java
if (leeftijd >= 16 && toestemming == true) {
  println("Toegestaan");
}
```

// `&&` = AND
// ALLE voorwaarden moeten waar zijn.

// =====================================================
// 21. OR – ||
// =====================================================

```java
if (sluipen == true || kruipen == true) {
  println("Onzichtbaar");
}
```

// `||` = OR
// MINSTENS ÉÉN voorwaarde moet waar zijn.

// =====================================================
// 22. NOT – !
// =====================================================

```java
boolean gameOver = false;

if (!gameOver) {
  println("Het spel gaat door");
}
```

// `!` draait true/false om.

// =====================================================
// 23. FOR LOOP
// =====================================================

```java
for (int i = 0; i < 10; i++) {
  println(i);
}
```

// for heeft 3 onderdelen:
//
// int i = 0  → begin
// i < 10     → voorwaarde
// i++        → +1

// Resultaat:
//
// 0
// 1
// 2
// 3
// 4
// 5
// 6
// 7
// 8
// 9

// =====================================================
// 24. FOR LOOP AFTELLEN
// =====================================================

```java
for (int i = 20; i >= 10; i--) {
  println(i);
}
```

// `i--` = 1 eraf.
//
// 20
// 19
// 18
// ...
// 10

// =====================================================
// 25. FOR LOOP MET STAPPEN
// =====================================================

```java
for (int i = 0; i <= 100; i = i + 10) {
  println(i);
}
```

// 0, 10, 20, 30 ... 100

// =====================================================
// 26. WHILE LOOP
// =====================================================

```java
int teller = 0;

while (teller < 10) {
  println(teller);
  teller++;
}
```

// while = herhalen zolang de voorwaarde TRUE is.
// Vergeet niet de teller te veranderen.

// =====================================================
// 27. FOR OF WHILE?
// =====================================================

// Vast aantal keer herhalen:
// → for
//
// Zolang iets waar is:
// → while

// =====================================================
// 28. KLEUREN
// =====================================================

```java
background(255);              // witte achtergrond
fill(255, 0, 0);              // rode vulling
stroke(0);                    // zwarte rand

ellipse(250, 250, 100, 100);
```

// RGB = Rood, Groen, Blauw
//
// rood  = 255, 0, 0
// groen = 0, 255, 0
// blauw = 0, 0, 255
// wit   = 255, 255, 255
// zwart = 0, 0, 0
// geel  = 255, 255, 0

// =====================================================
// 29. FILL
// =====================================================

```java
fill(255, 0, 0);
ellipse(250, 250, 100, 100);
```

// fill() = kleur BINNEN de vorm.

// =====================================================
// 30. STROKE
// =====================================================

```java
stroke(0, 0, 255);
ellipse(250, 250, 100, 100);
```

// stroke() = kleur van de RAND.

// Geen vulling:

```java
noFill();
```

// Geen rand:

```java
noStroke();
```

// =====================================================
// 31. ACHTERGROND
// =====================================================

```java
background(255);              // wit
background(0);                // zwart
background(255, 0, 0);        // rood
```

// background() = achtergrondkleur.

// =====================================================
// 32. FUNCTIES
// =====================================================

```java
void mijnFunctie() {
  println("Hallo");
}
```

// Functie maken.

```java
mijnFunctie();
```

// Functie uitvoeren.

// =====================================================
// 33. FUNCTIE MET PARAMETERS
// =====================================================

```java
void tekenCirkel(int x, int y) {
  ellipse(x, y, 50, 50);
}

void setup() {
  size(500, 500);

  tekenCirkel(100, 100);
}
```

// x en y zijn parameters.
// Je kunt verschillende waarden meegeven.

// =====================================================
// 34. FUNCTIE MET RETURN
// =====================================================

```java
int optellen(int a, int b) {
  return a + b;
}

int antwoord = optellen(5, 3);

println(antwoord);
```

// return = geeft een waarde terug.

// =====================================================
// 35. FIBONACCI
// =====================================================

```java
int getal1 = 0;
int getal2 = 1;

for (int i = 0; i < 10; i++) {
  println(getal1);

  int volgende = getal1 + getal2;
  getal1 = getal2;
  getal2 = volgende;
}
```

// Fibonacci:
//
// 0, 1, 1, 2, 3, 5, 8, 13, 21...
//
// Steeds:
// vorige 2 getallen bij elkaar optellen.

// =====================================================
// 36. ARRAY
// =====================================================

```java
int[] getallen = {10, 20, 30, 40};
```

// Array = meerdere waarden in één variabele.
//
// LET OP:
// Een array begint bij 0.

```java
println(getallen[0]);         // 10
println(getallen[1]);         // 20
println(getallen[2]);         // 30
println(getallen[3]);         // 40
```

// =====================================================
// 37. ARRAY + FOR
// =====================================================

```java
int[] getallen = {10, 20, 30, 40};

for (int i = 0; i < getallen.length; i++) {
  println(getallen[i]);
}
```

// `.length` = aantal elementen.
// `getallen[i]` = huidig element.

// =====================================================
// 38. RANDOM
// =====================================================

```java
float getal = random(0, 100);
```

// random() = willekeurig getal.
// Tussen 0 en 100.

// =====================================================
// 39. VEELGEMAAKTE FOUTEN
// =====================================================

// ❌ FOUT:
if (cijfer => 6)

// ✅ GOED:
if (cijfer >= 6)

// ❌ FOUT:
if (cijfer = 6)

// ✅ GOED:
if (cijfer == 6)

// ❌ FOUT:
String Result = "Hallo";
println(result);

// ✅ GOED:
String Result = "Hallo";
println(Result);

// Hoofdletters zijn belangrijk!

// =====================================================
// 40. PUNTKOMMA ;
// =====================================================

// Meestal eindigt een gewone code-regel met ;

int getal = 5;
println(getal);

// NIET:

if (getal > 3); {
}

// WEL:

if (getal > 3) {
println("Groter");
}

// =====================================================
// 41. ACCOLADES { }
// =====================================================

```java
if (cijfer >= 6) {
  println("Voldoende");
  println("Geslaagd");
}
```

// Alles tussen { } hoort bij de if.

// =====================================================
// 42. COMMENTAAR
// =====================================================

```java
// Dit is commentaar
```

// Alles achter // wordt niet uitgevoerd.
// Gebruik // om uit te leggen wat code doet.

// =====================================================
// 43. HANDIGE TOETS-CODE
// =====================================================

// Tel 1 t/m 10:

```java
for (int i = 1; i <= 10; i++) {
  println(i);
}
```

// Tel 10 t/m 1:

```java
for (int i = 10; i >= 1; i--) {
  println(i);
}
```

// Even getallen:

```java
for (int i = 0; i <= 20; i++) {
  if (i % 2 == 0) {
    println(i);
  }
}
```

// Voldoende controleren:

```java
int cijfer = 7;

if (cijfer >= 6) {
  println("Voldoende");
} else {
  println("Onvoldoende");
}
```

// Twee voorwaarden:

```java
if (leeftijd >= 16 && toestemming) {
  println("Toegestaan");
}
```

// =====================================================
// 44. WAT MOET IK GEBRUIKEN?
// =====================================================

// "Laat iets 10 keer gebeuren"
// → for

// "Blijf dit doen zolang..."
// → while

// "Als dit waar is..."
// → if

// "Als dit niet waar is..."
// → else

// "Nog een mogelijkheid"
// → else if

// "EN"
// → &&

// "OF"
// → ||

// "NIET"
// → !

// "Tekst"
// → String

// "Heel getal"
// → int

// "Kommagetal"
// → float

// "Waar/niet waar"
// → boolean

// "Console"
// → println()

// "Rechthoek"
// → rect()

// "Cirkel/ovaal"
// → ellipse()

// "Driehoek"
// → triangle()

// "Lijn"
// → line()

// "Punt"
// → point()

// "Vulling"
// → fill()

// "Rand"
// → stroke()

// "Achtergrond"
// → background()

// =====================================================
// 45. COÖRDINATEN – SNEL OVERZICHT
// =====================================================

// SCHERM:
size(500,500);

// LINKS BOVEN:
(0,0)

// MIDDEN:
(250,250)

// RECHTS BOVEN:
(500,0)

// LINKS ONDER:
(0,500)

// RECHTS ONDER:
(500,500)

// RECT:
// x,y = LINKSBOVENHOEK
rect(x,y,breedte,hoogte);

// ELLIPSE:
// x,y = MIDDEN
ellipse(x,y,breedte,hoogte);

// TRIANGLE:
// 3 PUNTEN
triangle(x1,y1,x2,y2,x3,y3);

// =====================================================
// 46. VORMEN OP SPECIFIEKE PLEKKEN
// =====================================================

// 🔵 Cirkel midden:

ellipse(250,250,100,100);

// 🔵 Cirkel linksboven:

ellipse(50,50,100,100);

// 🔵 Cirkel rechtsboven:

ellipse(450,50,100,100);

// 🔵 Cirkel linksonder:

ellipse(50,450,100,100);

// 🔵 Cirkel rechtsonder:

ellipse(450,450,100,100);

// 🟥 Vierkant midden:

rect(200,200,100,100);

// 🔺 Driehoek omhoog midden:

triangle(
250,100,
150,300,
350,300
);

// 🔻 Driehoek omlaag midden:

triangle(
150,100,
350,100,
250,300
);

// =====================================================
// 47. VOLLEDIG VOORBEELD
// =====================================================

```java
void setup() {
  size(500, 500);

  background(255);             // witte achtergrond

  // rode cirkel in het midden
  fill(255, 0, 0);
  ellipse(250, 250, 100, 100);

  // blauwe vierkant linksboven
  fill(0, 0, 255);
  rect(50, 50, 100, 100);

  // groene driehoek rechtsboven
  fill(0, 255, 0);
  triangle(
    400, 50,
    350, 150,
    450, 150
  );
}
```

// =====================================================
// ⭐ DE BELANGRIJKSTE DINGEN VOOR DE TOETS
// =====================================================

// 1. `=` is een waarde geven.
// 2. `==` is vergelijken.
// 3. `>=` betekent groter of gelijk.
// 4. `&&` betekent EN.
// 5. `||` betekent OF.
// 6. `!` betekent NIET.
// 7. `for` = herhalen.
// 8. `while` = herhalen zolang iets waar is.
// 9. `int` = heel getal.
// 10. `float` = kommagetal.
// 11. `String` = tekst.
// 12. `boolean` = true/false.
// 13. `rect()` gebruikt x,y als LINKSBOVENHOEK.
// 14. `ellipse()` gebruikt x,y als MIDDENPUNT.
// 15. `triangle()` gebruikt 3 hoekpunten.
// 16. `(0,0)` = linksboven.
// 17. x → rechts.
// 18. y → beneden.
// 19. `(250,250)` = midden bij 500×500.
// 20. `fill()` = kleur binnenkant.
// 21. `stroke()` = kleur rand.
// 22. `background()` = achtergrond.
// 23. `println()` = console.
// 24. `//` = commentaar.



Ja, absoluut. Dit is juist een van de belangrijkste dingen om op je spiekbrief te hebben. **Let vooral op `<=` en `>=`: `=<` en `=>` zijn fout.**

Je kunt dit blok in je grote spiekbrief zetten:

# 🔢 VERGELIJKINGSOPERATORen

// Deze gebruik je vooral bij `if`, `else if` en `while`.
// Ze bepalen of een voorwaarde TRUE of FALSE is.

// =====================================================
// 1. ==  → IS GELIJK AAN
// =====================================================

```java
if (cijfer == 6) {
  println("Het cijfer is precies 6");
}
```

// Gebruik `==` wanneer je wilt controleren
// of twee dingen PRECIES gelijk zijn.
//
// Voorbeeld:
// 6 == 6 → TRUE
// 6 == 7 → FALSE

// =====================================================
// 2. !=  → IS NIET GELIJK AAN
// =====================================================

```java
if (cijfer != 6) {
  println("Het cijfer is niet 6");
}
```

// Gebruik `!=` wanneer iets NIET gelijk mag zijn.
//
// Voorbeeld:
// 5 != 6 → TRUE
// 6 != 6 → FALSE

// =====================================================
// 3. >  → GROTER DAN
// =====================================================

```java
if (leeftijd > 18) {
  println("Ouder dan 18");
}
```

// Gebruik `>` wanneer het getal GROTER moet zijn.
//
// 19 > 18 → TRUE
// 18 > 18 → FALSE

// =====================================================
// 4. <  → KLEINER DAN
// =====================================================

```java
if (leeftijd < 18) {
  println("Jonger dan 18");
}
```

// Gebruik `<` wanneer het getal KLEINER moet zijn.
//
// 17 < 18 → TRUE
// 18 < 18 → FALSE

// =====================================================
// 5. >=  → GROTER DAN OF GELIJK AAN
// =====================================================

```java
if (cijfer >= 6) {
  println("Voldoende");
}
```

// Gebruik `>=` wanneer het getal GROTER OF PRECIES GELIJK
// mag zijn.
//
// 7 >= 6 → TRUE
// 6 >= 6 → TRUE
// 5 >= 6 → FALSE

// =====================================================
// 6. <=  → KLEINER DAN OF GELIJK AAN
// =====================================================

```java
if (leeftijd <= 18) {
  println("18 jaar of jonger");
}
```

// Gebruik `<=` wanneer het getal KLEINER OF PRECIES GELIJK
// mag zijn.
//
// 17 <= 18 → TRUE
// 18 <= 18 → TRUE
// 19 <= 18 → FALSE

// =====================================================
// ⚠️ PAS OP VOOR DEZE FOUTEN
// =====================================================

// ❌ FOUT:
=<

// ❌ FOUT:
=>

// ❌ FOUT:
if (cijfer => 6)

// ❌ FOUT:
if (cijfer =< 6)

// ✅ GOED:

> =

// ✅ GOED:
<=

// Dus:

if (cijfer >= 6) {
}

if (leeftijd <= 18) {
}

// =====================================================
// 7. =  → WAARDE TOEWIJZEN
// =====================================================

```java
int cijfer = 7;
```

// `=` betekent NIET "is gelijk aan" bij een vergelijking.
// Het betekent: geef deze waarde aan de variabele.
//
// cijfer = 7
// → cijfer krijgt de waarde 7

// =====================================================
// 8. == VERSUS =
// =====================================================

// `=`
// → een waarde geven

```java
int leeftijd = 17;
```

// `==`
// → controleren of iets gelijk is

```java
if (leeftijd == 17) {
  println("De leeftijd is 17");
}
```

// =====================================================
// 🧠 SNELLE TABEL
// =====================================================

=       // waarde geven
==      // gelijk aan
!=      // niet gelijk aan

> ```
>   // groter dan
> ```

<       // kleiner dan

> =      // groter dan OF gelijk aan
> <=      // kleiner dan OF gelijk aan

// =====================================================
// ⭐ EZELSBRUG
// =====================================================

// De "open kant" van < of > wijst naar het GROOTSTE getal.
//
// 5 < 10
//     ^
// De open kant kijkt naar 10.
//
// Denk aan:
//
// 10 > 5
// ↑
// grote kant bij 10

// =====================================================
// 9. IN COMBINATIE MET IF
// =====================================================

```java
int cijfer = 7;

if (cijfer >= 6) {
  println("Voldoende");
} else {
  println("Onvoldoende");
}
```

// Vraag die je jezelf kunt stellen:
// "Moet het gelijk mogen zijn?"
//
// JA → gebruik >= of <=
// NEE → gebruik > of <

// =====================================================
// 10. IN COMBINATIE MET WHILE
// =====================================================

```java
int teller = 0;

while (teller < 10) {
  println(teller);
  teller++;
}
```

// `teller < 10`
// → blijf doorgaan zolang teller kleiner is dan 10.
//
// Output:
// 0
// 1
// 2
// ...
// 9

// =====================================================
// 11. MEERDERE VOORWAARDEN
// =====================================================

```java
if (leeftijd >= 16 && leeftijd <= 18) {
  println("Leeftijd is tussen 16 en 18");
}
```

// `&&` = EN
//
// Dus:
// leeftijd moet >= 16 zijn
// EN
// leeftijd moet <= 18 zijn.
//
// 17 → TRUE
// 15 → FALSE
// 19 → FALSE

// =====================================================
// 12. OF
// =====================================================

```java
if (leeftijd == 16 || leeftijd == 18) {
  println("Leeftijd is 16 of 18");
}
```

// `||` = OF
//
// Eén van de voorwaarden moet TRUE zijn.

// =====================================================
// 🎯 VOOR TOETS ONTHOUDEN
// =====================================================

// `=`  → ik geef iets een waarde
// `==` → ik vraag: zijn ze gelijk?
// `!=` → zijn ze NIET gelijk?
// `>`  → groter
// `<`  → kleiner
// `>=` → groter OF gelijk
// `<=` → kleiner OF gelijk
//
// ❌ `=>` bestaat niet
// ❌ `=<` bestaat niet
