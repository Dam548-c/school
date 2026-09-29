```java
// DATA TYPES
// Een data type bepaalt wat voor soort waarde een variabele kan bevatten.


// INT
// Voor hele getallen.
// Bijvoorbeeld: 5, 10, -3, 100

int leeftijd = 17;
int punten = 100;


// FLOAT
// Voor getallen met decimalen.
// Je gebruikt een punt bij decimalen.

float snelheid = 5.5;
float temperatuur = 21.5;


// STRING
// Voor tekst.
// Tekst staat tussen dubbele aanhalingstekens " ".

String naam = "Damian";
String zin = "Hallo wereld!";


// BOOLEAN
// Kan maar twee waarden hebben:
// true = waar
// false = niet waar

boolean gameOver = false;
boolean gewonnen = true;


// CHAR
// Voor één teken.
// Je gebruikt enkele aanhalingstekens ' '.

char letter = 'A';
char keuze = 'X';


// DATA TYPES KORT
// int     = hele getallen
// float   = decimalen
// String  = tekst
// boolean = true / false
// char    = één teken



// =
// Gebruik je om een waarde IN een variabele te zetten.
// Je geeft iets een waarde.

int punten = 10;

punten = 20;

// Nu is punten 20.


// ==
// Gebruik je om twee waarden MET ELKAAR TE VERGELIJKEN.
// Je vraagt eigenlijk: "zijn deze twee hetzelfde?"

if (punten == 20) {
  println("Punten zijn 20");
}


// = OF ==
// =  → waarde geven/veranderen
// == → controleren/vergelijken

int leeftijd = 17;       // waarde geven

if (leeftijd == 17) {    // controleren
  println("Je bent 17");
}


// VOORBEELD MET IF

int cijfer = 7;

if (cijfer >= 6) {
  println("Voldoende");
}


// LET OP
// Dit is FOUT:

if (cijfer = 6) {
  println("6");
}

// Bij een if gebruik je meestal == om te vergelijken.
// = gebruik je om een variabele een waarde te geven.


// !=
// Betekent: NIET GELIJK AAN.

if (cijfer != 5) {
  println("Het cijfer is geen 5");
}


// > 
// Groter dan

if (cijfer > 5) {
  println("Groter dan 5");
}


// <
// Kleiner dan

if (cijfer < 10) {
  println("Kleiner dan 10");
}


// >=
// Groter dan OF gelijk aan

if (cijfer >= 6) {
  println("6 of hoger");
}


// <=
// Kleiner dan OF gelijk aan

if (cijfer <= 10) {
  println("10 of lager");
}


// BOOLEAN IN IF
// Een boolean is al true of false.
// Je hoeft niet altijd == true te schrijven.

boolean gameOver = false;

if (gameOver) {
  println("Game over!");
}


// BOOLEAN MET ==

if (gameOver == false) {
  println("Het spel gaat door");
}


// HANDIGE ONTHOUDTRUC
// =  → KRIJGT
// == → IS GELIJK AAN?

int leeftijd = 17;
// leeftijd KRIJGT 17

if (leeftijd == 17) {
  // Is leeftijd gelijk aan 17?
}
```


```java
// CODE LEZEN – WAT WORDT ER GEPRINT?
// Kijk eerst naar de beginwaarden.
// Loop daarna de code stap voor stap door.
// Kijk welke if/else voorwaarde true wordt.
// Kijk uiteindelijk welke waarde in de variabele staat.


// VOORBEELD 1 – IF / ELSE IF / ELSE

int a = 8;
int b = 4;
int resultaat = 0;

if (a > 5 && b <= 5) {
  resultaat = 20;
} else if (a > 10 || b > 2) {
  resultaat = 21;
} else {
  resultaat = 22;
}

println(resultaat);

// Antwoord: 20
// a > 5  → true
// b <= 5 → true
// true && true → true
// Dus resultaat wordt 20.
// De rest wordt overgeslagen.


// VOORBEELD 2 – ELSE IF

int a = 8;
int b = 10;
int resultaat = 0;

if (a > 10) {
  resultaat = 20;
} else if (b > 5) {
  resultaat = 30;
} else {
  resultaat = 40;
}

println(resultaat);

// Antwoord: 30
// a > 10 → false
// b > 5  → true
// Dus resultaat = 30.


// VOORBEELD 3 – &&
// && betekent EN.
// Beide voorwaarden moeten true zijn.

int x = 10;
int y = 5;

if (x > 5 && y > 3) {
  println("A");
} else {
  println("B");
}

// Antwoord: A
// x > 5 → true
// y > 3 → true
// true && true → true


// VOORBEELD 4 – && MET FALSE

int x = 10;
int y = 2;

if (x > 5 && y > 3) {
  println("A");
} else {
  println("B");
}

// Antwoord: B
// x > 5 → true
// y > 3 → false
// true && false → false


// VOORBEELD 5 – ||
// || betekent OF.
// Minimaal één voorwaarde moet true zijn.

int x = 10;
int y = 2;

if (x > 20 || y > 1) {
  println("A");
} else {
  println("B");
}

// Antwoord: A
// x > 20 → false
// y > 1 → true
// false || true → true


// VOORBEELD 6 – || ALLES FALSE

int x = 10;
int y = 2;

if (x > 20 || y > 5) {
  println("A");
} else {
  println("B");
}

// Antwoord: B
// false || false → false


// VOORBEELD 7 – BOOLEAN

boolean overlap = false;

if (overlap) {
  println("Botsing!");
} else {
  println("Geen botsing!");
}

// Antwoord: Geen botsing!
// overlap = false


// VOORBEELD 8 – BOOLEAN TRUE

boolean overlap = true;

if (overlap) {
  println("Botsing!");
} else {
  println("Geen botsing!");
}

// Antwoord: Botsing!
// overlap = true


// VOORBEELD 9 – BOOLEAN VERANDERT

boolean overlap = false;

overlap = true;

if (overlap) {
  println("Ja");
} else {
  println("Nee");
}

// Antwoord: Ja
// Eerst is overlap false.
// Daarna wordt overlap true.
// Dus de if wordt uitgevoerd.


// VOORBEELD 10 – TELLER

int teller = 0;

teller++;
teller++;
teller++;

println(teller);

// Antwoord: 3
// 0 → 1 → 2 → 3


// VOORBEELD 11 – TELLER MET ---

int teller = 5;

teller--;
teller--;

println(teller);

// Antwoord: 3
// 5 → 4 → 3


// VOORBEELD 12 – TELLER IN IF

int teller = 5;

if (teller > 3) {
  teller += 10;
}

println(teller);

// Antwoord: 15
// teller = 5
// 5 > 3 → true
// teller wordt 5 + 10 = 15


// VOORBEELD 13 – TELLER IN FOR LOOP

int teller = 0;

for (int i = 0; i < 5; i++) {
  teller++;
}

println(teller);

// Antwoord: 5
// De for-loop draait 5 keer.
// Iedere keer komt er 1 bij.


 // VOORBEELD 14 – FOR LOOP PRINTEN

for (int i = 0; i < 4; i++) {
  println(i);
}

// Antwoord:
// 0
// 1
// 2
// 3


// VOORBEELD 15 – FOR LOOP MET 10

for (int i = 1; i <= 5; i++) {
  println(i);
}

// Antwoord:
// 1
// 2
// 3
// 4
// 5


// VOORBEELD 16 – FOR LOOP + IF

int aantal = 0;

for (int i = 0; i < 10; i++) {
  if (i > 5) {
    aantal++;
  }
}

println(aantal);

// Antwoord: 4
// i is groter dan 5 bij:
// 6, 7, 8, 9
// Dus aantal = 4.


// VOORBEELD 17 – X EN Y

int x = 10;
int y = 20;

if (x < y) {
  println("x is kleiner");
} else {
  println("y is kleiner");
}

// Antwoord: x is kleiner
// 10 < 20 → true


// VOORBEELD 18 – X EN Y OMGEKEERD

int x = 30;
int y = 20;

if (x < y) {
  println("x is kleiner");
} else {
  println("y is kleiner");
}

// Antwoord: y is kleiner
// 30 < 20 → false
// Dus else wordt uitgevoerd.


// VOORBEELD 19 – X + Y

int x = 10;
int y = 5;
int resultaat = x + y;

println(resultaat);

// Antwoord: 15


// VOORBEELD 20 – X - Y

int x = 10;
int y = 5;
int resultaat = x - y;

println(resultaat);

// Antwoord: 5


// VOORBEELD 21 – X * Y

int x = 10;
int y = 5;
int resultaat = x * y;

println(resultaat);

// Antwoord: 50


// VOORBEELD 22 – X / Y

int x = 10;
int y = 5;
int resultaat = x / y;

println(resultaat);

// Antwoord: 2


// VOORBEELD 23 – WAARDE VERANDEREN

int x = 5;

x = 10;
x += 5;

println(x);

// Antwoord: 15
// x = 5
// x = 10
// x += 5 → 15


// VOORBEELD 24 – MEERDERE IF'S

int punten = 10;

if (punten >= 5) {
  println("A");
}

if (punten >= 10) {
  println("B");
}

// Antwoord:
// A
// B
//
// Let op:
// Bij twee losse if's kunnen BEIDE uitgevoerd worden.


// VOORBEELD 25 – ELSE IF

int punten = 10;

if (punten >= 5) {
  println("A");
} else if (punten >= 10) {
  println("B");
}

// Antwoord: A
//
// De eerste if is al true.
// Daarom wordt de else if niet meer bekeken.


// VOORBEELD 26 – ==

int x = 10;

if (x == 10) {
  println("A");
} else {
  println("B");
}

// Antwoord: A
// x is gelijk aan 10.


 // VOORBEELD 27 – !=

int x = 10;

if (x != 5) {
  println("A");
} else {
  println("B");
}

// Antwoord: A
// 10 is NIET gelijk aan 5.


// VOORBEELD 28 – MEERDERE VOORWAARDEN

int x = 8;
int y = 4;

if (x > 5 && y < 10) {
  println("1");
} else {
  println("2");
}

// Antwoord: 1
// 8 > 5 → true
// 4 < 10 → true
// true && true → true


// VOORBEELD 29 – BOOLEAN + AND

boolean overlap = true;
int punten = 10;

if (overlap == true && punten >= 10) {
  println("Botsing en genoeg punten");
} else {
  println("Niet waar");
}

// Antwoord: Botsing en genoeg punten
// overlap == true → true
// punten >= 10 → true
// true && true → true


// VOORBEELD 30 – BOOLEAN + OR

boolean overlap = false;
int punten = 10;

if (overlap == true || punten >= 10) {
  println("Gelukt");
} else {
  println("Niet gelukt");
}

// Antwoord: Gelukt
// false || true → true


// VOORBEELD 31 – WAT IS DE EINDWAARDE?

int x = 5;

if (x > 3) {
  x += 2;
}

if (x > 6) {
  x += 10;
}

println(x);

// Antwoord: 17
// x = 5
// 5 > 3 → true → x = 7
// 7 > 6 → true → x = 17


// VOORBEELD 32 – WAT WORDT ER GEPRINT?

int a = 4;
int b = 8;
int resultaat = 0;

if (a > 5 && b > 5) {
  resultaat = 10;
} else if (a < 5 || b < 5) {
  resultaat = 20;
} else {
  resultaat = 30;
}

println(resultaat);

// Antwoord: 20
// Eerste if:
// a > 5 → false
// false && true → false
//
// Else if:
// a < 5 → true
// true || false → true
//
// Dus resultaat = 20.


// STAPPENPLAN – CODE LEZEN
// 1. Schrijf alle beginwaarden op.
// 2. Kijk naar de eerste if.
// 3. Bereken elke voorwaarde apart.
// 4. Bij && moeten ALLE voorwaarden true zijn.
// 5. Bij || moet MINIMAAL ÉÉN voorwaarde true zijn.
// 6. Kijk welke code wordt uitgevoerd.
// 7. Pas de variabelen aan.
// 8. Ga door naar de volgende if/else.
// 9. Kijk uiteindelijk wat println() print.


// HANDIGE WAARHEDEN OM TE ONTHOUDEN
// true && true   = true
// true && false  = false
// false && true  = false
// false && false = false
//
// true || true   = true
// true || false  = true
// false || true  = true
// false || false = false
```
