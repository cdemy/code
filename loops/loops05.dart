import 'dart:math';

void main() {
  final werte = <int>[];
  final rng = Random();
  for (var i = 0; i < 100; i++) {
    werte.add(rng.nextInt(6) + 1);
  }
  for (var i = 0; i < 100; i++) {
    print('Wert 1: ${werte[0]}');
  }
}
