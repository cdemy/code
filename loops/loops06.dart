import 'dart:io';

import 'dart:math';

// muss über 'dart run loops06.dart' aufgerufen werden
// (aus dem richtigen Verzeichnis)

void main() {
  final rng = Random();
  print('Wieviele Würfel sollen geworfen werden? ');
  final input = stdin.readLineSync();
  if (input == null) return;
  final anzahl = int.tryParse(input) ?? 0;
  for (var i = 0; i < anzahl; i++) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
}
