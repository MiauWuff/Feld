PImage wa;
PImage mo;
PImage la;
int gr = 2;
final int feldWidth = 10;
final int feldHeight = 10;
Feld [][] landkarte;


int Name = 0;

void setup () {
  
   pixelDensity(2);
  //water
    size(5000,5000);
  wa = loadImage("water.png");
  //mountain
  mo = loadImage("mountain.png");
  //land
  la = loadImage("land.png");
  landkarte = new Feld[feldHeight][feldWidth];
  
  for (int y=0; y<feldHeight; y++) {
    for (int x=0; x<feldWidth; x++) {
      Name++;
      int z = int(random(0,6));
      Feld neuesFeld = new Feld(x*50*gr, y*50*gr, Name, z);      
      landkarte[y][x] = neuesFeld;
      
    }
    Name++;
  }
  
  
    
  for (int y=0; y<feldHeight; y++) {
    for (int x=0; x<feldWidth; x++) {
      print( landkarte[y][x].getFieldSymbol() );
    }
    println("");
  }
  
  
  
}


void draw() {
  for (int y = 0; y < landkarte.length; y++){
    if (mouseY == y){
      for (int x = 0; x < landkarte.length; x++){
        if (mouseX == x){
          
        }
      }
    }
  }
}
