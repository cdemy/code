class Dreieck {
  double _laenge;
  double _hoehe;
  double _flaeche;

  Dreieck(this._laenge, this._hoehe) : _flaeche = _laenge * _hoehe / 2;

  String get laengeFixed => _laenge.toStringAsFixed(2);
  String get hoeheFixed => _hoehe.toStringAsFixed(2);
  String get flaecheFixed => _flaeche.toStringAsFixed(2);
  String get info => 'Das Dreieck mit Länge $laengeFixed und Höhe $hoeheFixed hat eine Fläche von $flaecheFixed';
  void set laenge(double laenge) {
    this._laenge = laenge;
    this._flaeche = _laenge * _hoehe / 2;
  }

  void set hoehe(double hoehe) {
    this._hoehe = hoehe;
    this._flaeche = _laenge * _hoehe / 2;
  }
}

void main() {
  final dreieck = Dreieck(3, 5);
  print(dreieck.info);
  dreieck.hoehe = 10;
  print(dreieck.info);
}
