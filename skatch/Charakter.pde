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
   if ((this.spalte-gro)/gro>=0 && landkarte[(this.spalte-gro)/gro][this.zeile/gro].kontrolle()>2) {
      this.spalte=this.spalte-gro;
      return int(this.spalte);
    } else {
      println("you_shall_not_pass");
      return int(this.spalte); 
    }
  }
  int newPositionDown() {
    
    if ((this.spalte+gro)/gro<=feldHeight && landkarte[(this.spalte+gro)/gro][this.zeile/gro].kontrolle()>2) {
      this.spalte=this.spalte+gro;
      return int(this.spalte);
    } else {
      println("you_shall_not_pass");
      return int(this.spalte-gro);
    }
  }
  int newPositionLeft() {
    
    if ((this.zeile-gro)/gro>=0 &&landkarte[this.spalte/gro][(this.zeile-gro)/gro].kontrolle()>2) {
      this.zeile=this.zeile-gro;
      return int(this.zeile);
    } else {
      println("you_shall_not_pass");
      return int(this.zeile+gro);
    }
  }
  int newPositionRight() {
    
    if ((this.zeile+gro)/gro<=feldWidth &&landkarte[this.spalte/gro][(this.zeile+gro)/gro].kontrolle()>2) {
      this.zeile=this.zeile+gro;
      return int(this.zeile);
    } else {
      println("you_shall_not_pass");
      return int(this.zeile-gro);
    }
  }
}
