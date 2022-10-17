class Dreieck {
  double laenge;
  double hoehe;

  Dreieck(this.laenge, this.hoehe);

  double get flaeche {
    return laenge * hoehe / 2;
  }

  String get laengeFixed => laenge.toStringAsFixed(2);
  String get hoeheFixed => hoehe.toStringAsFixed(2);
  String get flaecheFixed => flaeche.toStringAsFixed(2);
}

void main() {
  final dreieck = Dreieck(3, 5);
  print(
    'Das Dreieck mit Länge ${dreieck.laengeFixed} und Höhe ${dreieck.hoeheFixed} hat eine Fläche von ${dreieck.flaecheFixed}',
  );
  // dreieck.flaeche = 15;  // geht nicht
}
