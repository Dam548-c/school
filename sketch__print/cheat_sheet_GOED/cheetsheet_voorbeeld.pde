# 🟦 PROCESSING – COMPLETE TOETS SPIEKBRIEF

## 1. BASIS

### Sketch starten

```java
void setup() {
  size(500, 500);
}

void draw() {
}
```

* `setup()` → wordt **1 keer** uitgevoerd.
* `draw()` → wordt **steeds opnieuw** uitgevoerd.
* `size(500,500)` → scherm van 500 bij 500.

---

# 2. COÖRDINATEN

```text
(0,0) --------------------> X
  |
  |
  |
  v
  Y
```

Bij `size(500,500)`:

```text
linksboven  = (0,0)
rechtsboven = (500,0)
linksonder  = (0,500)
rechtsonder = (500,500)
midden      = (250,250)
```

**Let op:** bij Processing loopt Y naar beneden.

---

# 3. VORMEN

## Point

```java
point(100,100);
```

→ Zet 1 punt op `(100,100)`.

---

## Line

```java
line(100,100,400,100);
```

→ Lijn van `(100,100)` naar `(400,100)`.

Volledig voorbeeld:

```java
void setup() {
  size(500,500);
}

void draw() {
  line(100,100,400,100);
}
```

---

## Rectangle

```java
rect(x,y,breedte,hoogte);
```

⚠️ `x,y` is de **linkerbovenhoek**.

Voorbeeld:

```java
rect(200,200,100,100);
```

→ Vierkant van 100×100.

---

## Ellipse / cirkel

```java
ellipse(x,y,breedte,hoogte);
```

⚠️ `x,y` is het **midden**.

Voorbeeld:

```java
ellipse(250,250,100,100);
```

→ Cirkel in het midden.

---

## Triangle

```java
triangle(x1,y1,x2,y2,x3,y3);
```

Voorbeeld:

```java
triangle(250,100,150,300,350,300);
```

→ Driehoek die omhoog wijst.

---

# 4. KLEUREN

## Achtergrond

```java
background(255);
```

→ Witte achtergrond.

```java
background(0);
```

→ Zwarte achtergrond.

---

## Fill

`fill()` bepaalt de **kleur binnenin** een vorm.

```java
fill(255,0,0);
ellipse(250,250,100,100);
```

→ Rode cirkel.

RGB:

```text
rood    = 255,0,0
groen   = 0,255,0
blauw   = 0,0,255
geel    = 255,255,0
wit     = 255,255,255
zwart   = 0,0,0
```

---

## Stroke

`stroke()` bepaalt de **kleur van de rand**.

```java
stroke(0);
ellipse(250,250,100,100);
```

→ Zwarte rand.

---

## Geen vulling

```java
noFill();
ellipse(250,250,100,100);
```

→ Alleen de rand.

---

## Geen rand

```java
noStroke();
ellipse(250,250,100,100);
```

→ Alleen de vulling.

---

# 5. VARIABELEN

## int

Voor hele getallen.

```java
int leeftijd = 17;
println(leeftijd);
```

---

## float

Voor kommagetallen.

```java
float snelheid = 2.5;
println(snelheid);
```

---

## String

Voor tekst.

```java
String naam = "Damian";
println(naam);
```

---

## boolean

Voor `true` of `false`.

```java
boolean spelGestart = true;

println(spelGestart);
```

---

# 6. STRING SAMENVOEGEN

Met `+` kun je tekst samenvoegen.

```java
String naam = "Damian";
String zin = "Hallo " + naam;

println(zin);
```

Uitkomst:

```text
Hallo Damian
```

Meerdere Strings:

```java
String eerste = "Hallo ";
String tweede = "mijn naam is ";
String derde = "Damian";

String resultaat = eerste + tweede + derde;

println(resultaat);
```

⚠️ Hoofdletters tellen mee:

```java
String Result = "hoi";

println(Result); // goed
println(result); // fout
```

---

# 7. INT NAAR STRING

Met `str()`.

```java
int getal = 5;

String tekst = str(getal);

println(tekst);
```

Bijvoorbeeld:

```java
int lengte = 10;
String zin = "Wat lang zeg!";

println(lengte + " " + zin);
```

Uitkomst:

```text
10 Wat lang zeg!
```

---

# 8. PRINTLN

Iets op de console zetten:

```java
println("Hallo");
```

Getal:

```java
println(10);
```

Variabele:

```java
int leeftijd = 17;
println(leeftijd);
```

Meerdere dingen:

```java
int leeftijd = 17;
String naam = "Damian";

println(naam, leeftijd);
```

Of:

```java
println("Naam: " + naam + " Leeftijd: " + leeftijd);
```

---

# 9. IF

Gebruik `if` als je iets wilt **controleren**.

```java
int leeftijd = 17;

if (leeftijd >= 18) {
  println("Volwassen");
}
```

---

# 10. ELSE

Als de `if` niet waar is:

```java
int leeftijd = 17;

if (leeftijd >= 18) {
  println("Volwassen");
} else {
  println("Niet volwassen");
}
```

---

# 11. ELSE IF

Meerdere mogelijkheden:

```java
int leeftijd = 17;

if (leeftijd < 12) {
  println("Kind");
} else if (leeftijd < 18) {
  println("Tiener");
} else {
  println("Volwassene");
}
```

⚠️ Processing stopt bij de **eerste voorwaarde die waar is**.

---

# 12. VERGELIJKINGSOPERATOREN

## `=`

Waarde geven aan een variabele.

```java
int leeftijd = 17;
```

Betekent:

**leeftijd krijgt de waarde 17.**

---

## `==`

Controleren of iets **gelijk is aan**.

```java
if (leeftijd == 17) {
  println("Je bent 17");
}
```

⚠️ `==` gebruiken bij vergelijken.

---

## `!=`

Betekent **niet gelijk aan**.

```java
if (leeftijd != 18) {
  println("Je bent niet 18");
}
```

---

## `>`

Groter dan.

```java
if (leeftijd > 16) {
  println("Ouder dan 16");
}
```

---

## `<`

Kleiner dan.

```java
if (leeftijd < 18) {
  println("Jonger dan 18");
}
```

---

## `>=`

Groter dan **of gelijk aan**.

```java
if (cijfer >= 6) {
  println("Voldoende");
}
```

→ 6, 7, 8, 9 en 10 zijn goed.

---

## `<=`

Kleiner dan **of gelijk aan**.

```java
if (leeftijd <= 18) {
  println("18 of jonger");
}
```

⚠️ `=<` is fout.

Goed:

```java
<=
```

---

# 13. AND `&&`

**Allebei** moeten waar zijn.

```java
int leeftijd = 17;
int cijfer = 8;

if (leeftijd >= 16 && cijfer >= 6) {
  println("Alles is goed");
}
```

Betekent:

```text
leeftijd >= 16
EN
cijfer >= 6
```

---

# 14. OR `||`

**Minstens één** moet waar zijn.

```java
boolean kruipen = false;
boolean sluipen = true;

if (kruipen == true || sluipen == true) {
  println("Onzichtbaar");
}
```

Betekent:

```text
kruipen OF sluipen
```

---

# 15. NOT `!`

Draait `true` en `false` om.

```java
boolean gameOver = false;

if (!gameOver) {
  println("Spel gaat door");
}
```

`!false` → `true`

`!true` → `false`

---

# 16. FOR-LOOP

Gebruik `for` als je iets **meerdere keren** wilt doen.

Basis:

```java
for (int i = 0; i < 5; i++) {
  println(i);
}
```

Uitkomst:

```text
0
1
2
3
4
```

### Zo lees je hem:

```java
for (int i = 0; i < 5; i++)
```

```text
int i = 0  → begin bij 0
i < 5      → zolang kleiner dan 5
i++        → elke keer +1
```

---

# 17. FOR MET LIJNEN

```java
void setup() {
  size(500,500);
}

void draw() {
  for (int i = 1; i < 6; i++) {
    line(0, i * 80, width, i * 80);
  }
}
```

→ Maakt meerdere horizontale lijnen.

---

# 18. FOR MET 10 T/M 20

```java
for (int i = 10; i <= 20; i++) {
  println(i);
}
```

---

# 19. FOR ACHTERUIT

```java
for (int i = 10; i >= 0; i--) {
  println(i);
}
```

→ 10, 9, 8, 7...0

---

# 20. FOR MET STAPPEN

Bijvoorbeeld steeds +10:

```java
for (int i = 0; i <= 100; i = i + 10) {
  println(i);
}
```

→ 0, 10, 20, 30...100

---

# 21. WHILE

Herhaal zolang een voorwaarde waar is.

```java
int teller = 0;

while (teller < 5) {
  println(teller);
  teller++;
}
```

→ 0 t/m 4.

---

# 22. `++` EN `--`

`++` → +1

```java
int i = 5;
i++;
```

→ `i` wordt 6.

`--` → -1

```java
int i = 5;
i--;
```

→ `i` wordt 4.

---

# 23. ANDERE KORTE OPERATIES

```java
i += 5;
```

→ `i = i + 5`

```java
i -= 5;
```

→ `i = i - 5`

```java
i *= 5;
```

→ `i = i * 5`

```java
i /= 5;
```

→ `i = i / 5`

---

# 24. RANDOM

Willekeurig getal maken:

```java
float getal = random(0,100);
println(getal);
```

Willekeurige X-positie:

```java
float x = random(0,500);

ellipse(x,250,50,50);
```

Elke keer een andere positie.

---

# 25. WIDTH EN HEIGHT

`width` = breedte van scherm.

`height` = hoogte van scherm.

```java
void setup() {
  size(500,500);
}

void draw() {
  ellipse(width/2, height/2, 100,100);
}
```

→ Cirkel in het midden.

---

# 26. MOUSEX EN MOUSEY

`mouseX` = X-positie van muis.

`mouseY` = Y-positie van muis.

```java
void draw() {
  ellipse(mouseX, mouseY, 50, 50);
}
```

→ Cirkel volgt de muis.

---

# 27. MOUSEPRESSED

Code uitvoeren wanneer je klikt.

```java
void mousePressed() {
  println("Je hebt geklikt");
}
```

---

# 28. KEYPRESSED

Code uitvoeren wanneer je een toets indrukt.

```java
void keyPressed() {
  println("Toets ingedrukt");
}
```

---

# 29. RECTMODE

Normaal:

```java
rect(250,250,100,100);
```

`250,250` is linkerbovenhoek.

Met:

```java
rectMode(CENTER);
rect(250,250,100,100);
```

→ `250,250` is nu het **midden**.

Terug naar normaal:

```java
rectMode(CORNER);
```

---

# 30. ELLIPSEMODE

Normaal:

```java
ellipseMode(CENTER);
```

Dan is X,Y het midden.

Je kunt ook:

```java
ellipseMode(CORNER);
```

Dan is X,Y de linkerbovenhoek.

---

# 31. ARRAYS

Meerdere waarden in één variabele.

```java
int[] getallen = {10,20,30,40};
```

Eerste waarde:

```java
println(getallen[0]);
```

→ 10

Tweede:

```java
println(getallen[1]);
```

→ 20

⚠️ Een array begint bij **0**.

```text
index:  0   1   2   3
waarde: 10  20  30  40
```

---

# 32. ARRAY + FOR

Alle waarden printen:

```java
int[] getallen = {10,20,30,40};

for (int i = 0; i < getallen.length; i++) {
  println(getallen[i]);
}
```

`length` = aantal elementen.

---

# 33. ARRAY-WAARDE VERANDEREN

```java
int[] getallen = {10,20,30};

getallen[1] = 50;

println(getallen[1]);
```

→ 50

---

# 34. FUNCTIE

Een eigen functie maken:

```java
void hallo() {
  println("Hallo!");
}
```

Functie uitvoeren:

```java
hallo();
```

Volledig:

```java
void setup() {
  hallo();
}

void hallo() {
  println("Hallo!");
}
```

---

# 35. FUNCTIE MET PARAMETERS

Je kunt informatie meegeven.

```java
void tekenCirkel(int x, int y) {
  ellipse(x,y,50,50);
}
```

Gebruiken:

```java
tekenCirkel(100,100);
tekenCirkel(300,300);
```

→ Twee cirkels.

---

# 36. RETURN

Een functie kan een waarde teruggeven.

```java
int optellen(int a, int b) {
  return a + b;
}
```

Gebruiken:

```java
int antwoord = optellen(5,3);

println(antwoord);
```

→ 8

---

# 37. VOID VS INT

`void` → geeft niets terug.

```java
void hallo() {
  println("Hallo");
}
```

`int` → geeft een heel getal terug.

```java
int optellen(int a, int b) {
  return a + b;
}
```

---

# 38. MEERDERE VORMEN MET FOR

Bijvoorbeeld 5 cirkels:

```java
void draw() {
  for (int i = 0; i < 5; i++) {
    ellipse(50 + i * 100, 250, 50, 50);
  }
}
```

`i` verandert iedere keer:

```text
i = 0 → x = 50
i = 1 → x = 150
i = 2 → x = 250
i = 3 → x = 350
i = 4 → x = 450
```

---

# 39. NESTED IF

Een `if` in een `if`.

```java
int leeftijd = 17;
boolean toestemming = true;

if (leeftijd >= 16) {

  if (toestemming == true) {
    println("Toegestaan");
  }

}
```

---

# 40. NESTED FOR

Een `for` in een `for`.

Handig voor een raster:

```java
for (int x = 0; x < 5; x++) {

  for (int y = 0; y < 5; y++) {

    ellipse(x * 50, y * 50, 20, 20);

  }

}
```

---

# 41. BREAK

Stop een loop.

```java
for (int i = 0; i < 10; i++) {

  if (i == 5) {
    break;
  }

  println(i);
}
```

→ Print 0 t/m 4.

---

# 42. CONTINUE

Sla één ronde over.

```java
for (int i = 0; i < 5; i++) {

  if (i == 2) {
    continue;
  }

  println(i);
}
```

→ Print:

```text
0
1
3
4
```

---

# 43. PI / ROTEREN

Voor draaien:

```java
translate(250,250);
rotate(PI/4);

rect(-50,-50,100,100);
```

`PI/4` = 45 graden.

---

# 44. MATH FUNCTIES

## round()

Afronden:

```java
println(round(4.7));
```

→ 5

## floor()

Naar beneden:

```java
println(floor(4.9));
```

→ 4

## ceil()

Naar boven:

```java
println(ceil(4.1));
```

→ 5

## abs()

Absolute waarde:

```java
println(abs(-10));
```

→ 10

## max()

Grootste getal:

```java
println(max(10,20));
```

→ 20

## min()

Kleinste getal:

```java
println(min(10,20));
```

→ 10

---

# 45. FIBONACCI

Als je de Fibonacci-reeks moet maken:

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

Uitkomst:

```text
0
1
1
2
3
5
8
13
21
34
```

---

# 46. VEELGEMAAKTE FOUTEN ⚠️

### Fout:

```java
if (cijfer => 6)
```

### Goed:

```java
if (cijfer >= 6)
```

---

### Fout:

```java
if (cijfer = 6)
```

### Goed:

```java
if (cijfer == 6)
```

---

### Fout:

```java
if (cijfer >= 6);
```

### Goed:

```java
if (cijfer >= 6) {
  println("Voldoende");
}
```

---

### Fout:

```java
String Result = "hoi";
println(result);
```

### Goed:

```java
String result = "hoi";
println(result);
```

⚠️ Hoofdletters zijn belangrijk.

---

# 47. SNELLE TOETS-CHECK

Als je vastloopt, kijk eerst hier:

```text
=       → waarde geven
==      → gelijk aan?
!=      → niet gelijk?
>       → groter dan
<       → kleiner dan
>=      → groter/gelijk
<=      → kleiner/gelijk
&&      → EN
||      → OF
!       → NIET

++      → +1
--      → -1

int     → heel getal
float   → kommagetal
String  → tekst
boolean → true/false

if      → controleren
else    → anders
for     → herhalen
while   → herhalen zolang iets waar is

fill   → binnenkant kleur
stroke → rand kleur
background → achtergrond

rect   → x,y = linkerbovenhoek
ellipse → x,y = midden
triangle → 3 punten

width  → schermbreedte
height → schermhoogte
mouseX → muis X
mouseY → muis Y
```

# ⭐ BELANGRIJKSTE SYNTAX OM UIT JE HOOFD TE KENNEN

```java
if (voorwaarde) {
  
}
else {
  
}
```

```java
for (int i = 0; i < 10; i++) {
  
}
```

```java
while (voorwaarde) {
  
}
```

```java
int getal = 10;
float komma = 2.5;
String tekst = "Hallo";
boolean waar = true;
```

```java
ellipse(250,250,100,100);
rect(200,200,100,100);
line(0,0,500,500);
triangle(250,100,150,300,350,300);
```

```java
fill(255,0,0);
stroke(0);
background(255);
```

```java
println("Hallo");
```

```java
int[] getallen = {10,20,30,40};

for (int i = 0; i < getallen.length; i++) {
  println(getallen[i]);
}
```

```java
void mijnFunctie() {
  println("Hallo");
}

mijnFunctie();
```
