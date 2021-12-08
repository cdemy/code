import 'dart:io';

import 'dart:math';

// muss über 'dart run loops03.dart' aufgerufen werden
// (aus dem richtigen Verzeichnis)
// Known limitations: Can't go beyond 100

void main() {
  final rng = Random();
  print('Wieviele Würfel sollen geworfen werden? ');
  final input = stdin.readLineSync();
  if (input == null) return;
  final anzahl = int.tryParse(input);
  if (anzahl == null) return;
  // alternativ:
  // final anzahl = int.tryParse(input) ?? 0;
  if (anzahl >= 1) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 2) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 3) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 4) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 5) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 6) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 7) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 8) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 9) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 10) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 11) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 12) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 13) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 14) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 15) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 16) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 17) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 18) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 19) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 20) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 21) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 22) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 23) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 24) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 25) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 26) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 27) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 28) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 29) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 30) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 31) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 32) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 33) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 34) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 35) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 36) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 37) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 38) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 39) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 40) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 41) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 42) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 43) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 44) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 45) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 46) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 47) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 48) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 49) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 50) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 51) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 52) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 53) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 54) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 55) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 56) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 57) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 58) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 59) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 60) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 61) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 62) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 63) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 64) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 65) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 66) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 67) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 68) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 69) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 70) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 71) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 72) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 73) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 74) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 75) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 76) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 77) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 78) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 79) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 80) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 81) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 82) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 83) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 84) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 85) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 86) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 87) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 88) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 89) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 90) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 91) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 92) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 93) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 94) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 95) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 96) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 97) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 98) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 99) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
  if (anzahl >= 100) {
    print('Würfelergebnis: ${rng.nextInt(6) + 1}');
  }
}
