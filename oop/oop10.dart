class Kreis {
  static const pi = 3.4142136;
}

void main() {
  final radius = 5;
  final radiusF = radius.toStringAsFixed(2);
  final flaeche = Kreis.pi * radius * radius;
  final flaecheF = flaeche.toStringAsFixed(2);
  print('Die Fläche eines Kreises mit Radius $radiusF beträgt $flaecheF');
}
