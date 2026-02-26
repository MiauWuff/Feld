PImage wa;
PImage mo;
PImage la;
PImage Elb;
PImage Zwerg;
PImage Mensch;
int gr = 10;
int bild = 10;    //sice / 1000
int gro = gr * bild;
final int multi = 100;     //größer = kleinere Bilder
final int feldWidth = 10;
final int feldHeight = 10;
Feld [][] landkarte;

Charakter [] Position;
int countOfPlayers = 2; //anzahl der spiler eingeben

int Name = 0;

void setup () {

  pixelDensity(2);

  size(1000, 1000);     // anpassen für größe. bid beachten!

  Elb = loadImage("elb.png");

  Zwerg = loadImage("zwerg.png");

  Mensch = loadImage("mensch.png");

  wa = loadImage("water.png");    //water

  mo = loadImage("mountain.png");    //mountain

  la = loadImage("land.png");    //land

  landkarte = new Feld[feldHeight][feldWidth];

  for (int y=0; y<feldHeight; y++) {
    for (int x=0; x<feldWidth; x++) {
      Name++;
      int z = int(random(0, 6));
      Feld neuesFeld = new Feld(x*gro, y*gro, Name, z);
      landkarte[y][x] = neuesFeld;
    }
  }



  Position = new Charakter[countOfPlayers];   //erstellt einen platz für jeden spieler

  for (int P=0; P<countOfPlayers; P++) {
    int x = int(random(0, feldWidth));
    int y = int(random(0, feldHeight));
    Charakter newCharakter = new Charakter (x*gro, y*gro, "player"+P, int(random(0, 3)));

    Position[P] = newCharakter;
    print( Position[P].getTypSymbol() );
    println("");
  }
  println("");
  print("Player1");
  println("");
}

void draw() {
  background(0);

  for (int y=0; y<feldHeight; y++) {
    for (int x=0; x<feldWidth; x++) {
      print(landkarte[y][x].getFieldSymbol());
    }
  }

    for (int P=0; P<countOfPlayers; P++) {
      if (Position[P] != null) {
        Position [P].getTypSymbol();
      }
    }
  }



int BP = 0;
int maxBP = 3;
int PoT= 1;

void keyPressed() {
  if (key == CODED && BP<maxBP) {

    if (keyCode == UP) {
      Position [PoT-1].newPositionUp();
      BP++;
    }
    if (keyCode == DOWN) {
      Position [PoT-1].newPositionDown();
      BP++;
    }
    if (keyCode == LEFT) {
      Position [PoT-1].newPositionLeft();
      BP++;
    }
    if (keyCode == RIGHT) {
      Position [PoT-1].newPositionRight();
      BP++;
    }
    if (BP==maxBP) {
      PoT++;
      BP=0;
      if (PoT>countOfPlayers) {
        PoT=1;
      }
    }
    println("");
    print("Player"+PoT);
    println("");
    delay(100);
  }
}
