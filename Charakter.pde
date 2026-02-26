class Charakter {
  int zeile;
  int spalte;
  String name;
  int typ; 

  public Charakter (int zeile, int spalte, String name, int typ) {
    this.zeile = zeile;
    this.spalte = spalte;
    this.name = name;
    this.typ = typ;
  }
  
  String getTypSymbol() {

    if ( this.typ == 0) image(Elb, this.zeile, this.spalte, width * gr / multi, height * gr / multi);
    if ( this.typ == 1) image(Zwerg, this.zeile, this.spalte, width * gr / multi, height * gr / multi);
    if ( this.typ == 2) image(Mensch, this.zeile, this.spalte, width * gr / multi, height * gr / multi);
    return "";
  }

 
  
  
  
  int newPositionUp() {
    this.spalte=this.spalte-1*gro;
    if (landkarte[this.spalte][this.zeile].kontrolle()>3){
      return int(this.spalte);
    }
    return int(this.spalte+1*gro);
  }
  int newPositionDown() {
    this.spalte=this.spalte+1*gro;
    if (landkarte[this.spalte][this.zeile].kontrolle()>3){
      return int(this.spalte);
    }
    return int(this.spalte-1*gro);
  }
  int newPositionLeft() {
    this.zeile=this.zeile-1*gro;
    if (landkarte[this.spalte][this.zeile].kontrolle()>3){
      return int(this.zeile);
    }
    return int(this.zeile+1*gro);
  }
  int newPositionRight() {
    this.zeile=this.zeile+1*gro;
    if (landkarte[this.spalte][this.zeile].kontrolle()>3){
      return int(this.zeile);
    }
    return int(this.zeile-1*gro);
  }
}
