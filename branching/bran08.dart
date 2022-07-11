// Please start manually
// dart run bran08.dart
import 'dart:io';

void main() {
  // eingabe = Eingabe des Nutzers
  stdout.write('Eine Zahl bitte: ');
  final eingabe = stdin.readLineSync() ?? '';
  final zahl = int.tryParse(eingabe);
  // WENN die Eingabe eine Zahl war ...
  if (zahl != null) {
    // DANN WENN die Zahl größer als 1000 ist ...
    if (zahl > 1000) {
      // DANN Ausgabe: Sehr große Zahl
      stdout.writeln('Sehr große Zahl');
      // ANSONSTEN WENN die Zahl größer als 100 ist ...
    } else if (zahl > 100) {
      // DANN Ausgabe: Mittelgroße Zahl
      stdout.writeln('Mittelgroße Zahl');
      // ANSONSTEN WENN die Zahl größer als 10 ist ...
    } else if (zahl > 10) {
      // DANN Ausgabe: Na immerhin
      stdout.writeln('Na immerhin');
      // ANSONSTEN ...
    } else {
      // DANN Ausgabe: Kleine Zahl
      stdout.writeln('Kleine Zahl');
    }
  }
  // Ausgabe: Fertig
  stdout.writeln('Fertig');
}
