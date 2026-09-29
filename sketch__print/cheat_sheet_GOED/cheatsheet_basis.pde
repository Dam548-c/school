```java
// INT
// Gebruik je voor hele getallen.

int leeftijd = 17;
int punten = 0;


// FLOAT
// Gebruik je voor getallen met decimalen.

float snelheid = 5.5;


// BOOLEAN
// Kan alleen true of false zijn.

boolean gameOver = false;

if (gameOver == true) {
  println("Game over!");
}


// STRING
// Gebruik je voor tekst.

String naam = "Damian";

println(naam);


// IF
// Gebruik je om een voorwaarde te controleren.

if (leeftijd >= 18) {
  println("Volwassen");
}


// ELSE
// Gebeurt als de if niet waar is.

if (leeftijd >= 18) {
  println("Volwassen");
} else {
  println("Minderjarig");
}


// ELSE IF
// Gebruik je voor meerdere voorwaarden.

if (leeftijd < 12) {
  println("Kind");
} else if (leeftijd < 18) {
  println("Tiener");
} else {
  println("Volwassene");
}


// FOR
// Gebruik je om iets meerdere keren te herhalen.
// Beginwaarde ; voorwaarde ; verandering

for (int i = 0; i < 10; i++) {
  println(i);
}


// FOR – STAPPEN
// Hier gaat i steeds 10 omhoog.

for (int i = 0; i <= 100; i += 10) {
  println(i);
}


// WHILE
// Herhaalt zolang de voorwaarde true is.

int teller = 0;

while (teller < 10) {
  println(teller);
  teller++;
}


// ARRAY
// Bewaart meerdere waarden in één variabele.
// De eerste plek is altijd 0.

int[] getallen = {10, 20, 30, 40};

println(getallen[0]); // 10


// ARRAY + FOR
// Gebruik je om alle waarden uit een array langs te gaan.

for (int i = 0; i < getallen.length; i++) {
  println(getallen[i]);
}


// LINE
// Tekent een lijn.
// x1, y1 = beginpunt
// x2, y2 = eindpunt

line(0, 0, 500, 500);


// RECT
// Tekent een rechthoek.
// x, y = linkerbovenhoek
// w, h = breedte en hoogte

rect(100, 100, 50, 50);


// ELLIPSE
// Tekent een ovaal/cirkel.
// x, y = midden
// w, h = breedte en hoogte

ellipse(250, 250, 50, 50);


// TRIANGLE
// Tekent een driehoek.
// Je geeft 3 punten op.

triangle(250, 100, 150, 300, 350, 300);


// POINT
// Tekent één punt.

point(250, 250);


// FILL
// Bepaalt de vulkleur van een vorm.
// RGB: rood, groen, blauw.

fill(255, 0, 0);
ellipse(250, 250, 50, 50);


// STROKE
// Bepaalt de kleur van de rand.

stroke(0);
rect(100, 100, 50, 50);


// NOFILL
// Zorgt ervoor dat een vorm geen vulling heeft.

noFill();
ellipse(250, 250, 100, 100);


// NOSTROKE
// Zorgt ervoor dat een vorm geen rand heeft.

noStroke();
ellipse(250, 250, 100, 100);


// BACKGROUND
// Geeft de achtergrond een kleur.

background(255);


// PRINTLN
// Print iets in de console.

println("Hallo");
println(punten);


// =
// Geeft een waarde aan een variabele.

int punten = 10;
punten = 20;


// ==
// Controleert of twee dingen gelijk zijn.

if (punten == 20) {
  println("Klopt!");
}


// !=
// Controleert of iets NIET gelijk is.

if (punten != 10) {
  println("Punten zijn niet 10");
}


// >
// Groter dan.

if (punten > 10) {
  println("Meer dan 10");
}


// <
// Kleiner dan.

if (punten < 10) {
  println("Minder dan 10");
}


// >=
// Groter dan of gelijk aan.

if (punten >= 10) {
  println("10 of meer");
}


// <=
// Kleiner dan of gelijk aan.

if (punten <= 10) {
  println("10 of minder");
}


// &&
// EN – beide voorwaarden moeten true zijn.

if (punten >= 10 && leeftijd >= 18) {
  println("Beide kloppen");
}


// ||
// OF – minimaal één voorwaarde moet true zijn.

if (punten >= 10 || leeftijd >= 18) {
  println("Eén van de twee klopt");
}


// !
// NIET – draait true/false om.

if (!gameOver) {
  println("Het spel gaat door");
}


// ++
// Tel 1 op bij een variabele.

punten++;


// --
// Trek 1 af van een variabele.

punten--;


// +=
// Tel een waarde erbij op.

punten += 5;


// -=
// Trek een waarde af.

punten -= 5;


// RANDOM
// Geeft een willekeurige waarde.

int getal = int(random(1, 11));


// MOUSEX / MOUSEY
// Geeft de positie van de muis.

ellipse(mouseX, mouseY, 50, 50);


// MOUSEPRESSED
// Wordt uitgevoerd wanneer je met de muis klikt.

void mousePressed() {
  println("Geklikt!");
}


// KEYPRESSED
// Wordt uitgevoerd wanneer je een toets indrukt.

void keyPressed() {
  println("Toets ingedrukt!");
}


// KEYCODE
// Controleert welke speciale toets is ingedrukt.

if (keyCode == LEFT) {
  println("Links");
}


// WIDTH / HEIGHT
// width = breedte van het scherm
// height = hoogte van het scherm

rect(0, 0, width, height);


// CONSTRAIN
// Houdt een waarde tussen een minimum en maximum.

x = constrain(x, 0, width);


// DIST
// Bereken de afstand tussen twee punten.

float afstand = dist(x1, y1, x2, y2);


// FUNCTIE
// Een eigen stukje code dat je later kunt aanroepen.

void tekenSpeler() {
  ellipse(250, 250, 50, 50);
}

tekenSpeler();


// FUNCTIE MET PARAMETER
// Je geeft informatie mee aan de functie.

void tekenCirkel(int x, int y) {
  ellipse(x, y, 50, 50);
}

tekenCirkel(100, 100);


// RETURN
// Geeft een waarde terug uit een functie.

int optellen(int a, int b) {
  return a + b;
}

int antwoord = optellen(5, 3);


// VOID
// Betekent dat een functie niets teruggeeft.

void hallo() {
  println("Hallo!");
}


// SETUP
// Wordt één keer uitgevoerd bij het starten.

void setup() {
  size(500, 500);
}


// DRAW
// Wordt steeds opnieuw uitgevoerd.

void draw() {
  background(255);
}


// BREAK
// Stopt een loop direct.

for (int i = 0; i < 10; i++) {

  if (i == 5) {
    break;
  }

  println(i);
}


// CONTINUE
// Slaat één ronde van de loop over.

for (int i = 0; i < 10; i++) {

  if (i == 5) {
    continue;
  }

  println(i);
}
```
