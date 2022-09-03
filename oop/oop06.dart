class Dreieck {
  double laenge;
  double hoehe;
  double flaeche;

  Dreieck(this.laenge, this.hoehe) : flaeche = laenge * hoehe / 2;

  String get laengeFixed => laenge.toStringAsFixed(2);
  String get hoeheFixed => hoehe.toStringAsFixed(2);
  String get flaecheFixed => flaeche.toStringAsFixed(2);
  String get info => 'Das Dreieck mit Länge $laengeFixed und Höhe $hoeheFixed hat eine Fläche von $flaecheFixed';
}

void main() {
  final dreieck = Dreieck(3, 5);
  print(dreieck.info);
  dreieck.hoehe = 10;
  print(dreieck.info);
}
