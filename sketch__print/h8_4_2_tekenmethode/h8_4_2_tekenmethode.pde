size(70,70);
background(255,255,255);
int xWaarde = 5;
int yWaarde = 5;
for(int i = 0; i < 5; i++){
for(int j = 0; j < 5; j++){
rect(xWaarde, yWaarde, 5,5);
yWaarde = yWaarde + 5;
}
yWaarde = 5;
xWaarde = xWaarde + 5;
}
