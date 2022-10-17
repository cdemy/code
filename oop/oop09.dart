class Dreieck {
  static double flaeche(double grundseite, double hoehe) => grundseite * hoehe / 2;
}

void main() {
  final flaeche = Dreieck.flaeche(3, 5);
  print('Die Fläche ist ${flaeche.toStringAsFixed(2)}');
}
