class Feld {
  int zeile;
  int spalte;
  int name;
  int typ; //0&1=Wasser, 2&3&4=Ebene, 5=Berg
  
    public Feld (int zeile, int spalte, int name, int typ) {
      this.zeile = zeile;
      this.spalte = spalte;
      this.name = name;
      this.typ = typ;
    }
    
    String getFieldSymbol() {
      
      if( this.typ == 0) image(wa, this.zeile, this.spalte, width * gr / 100, height * gr / 100);
      if( this.typ == 1) image(wa, this.zeile, this.spalte, width * gr / 100, height * gr / 100);
      if( this.typ == 2) image(la, this.zeile, this.spalte, width * gr / 100, height * gr / 100);
      if( this.typ == 3) image(la, this.zeile, this.spalte, width * gr / 100, height * gr / 100);
      if( this.typ == 4) image(la, this.zeile, this.spalte, width * gr / 100, height * gr / 100);
      if( this.typ == 5) image(mo, this.zeile, this.spalte, width * gr / 100, height * gr / 100);
      return "0";
    }
    
    String toString() {
      return str(typ);
    }
}
