// Please start manually
// dart run bran07.dart
import 'dart:io';

void main() {
  stdout.write('Eine Zahl bitte: ');
  final eingabe = stdin.readLineSync() ?? '';
  final zahl = int.tryParse(eingabe);
  if (zahl == null) {
    stdout.writeln('Das war keine Zahl');
  } else {
    if (zahl < 100) {
      stdout.writeln('Kleine Zahl');
    } else {
      stdout.writeln('Große Zahl');
    }
  }
  stdout.writeln('Programm beendet');
}
