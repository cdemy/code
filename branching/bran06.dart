// Please start manually
// dart run bran06.dart
import 'dart:io';

void main() {
  stdout.write('Dein Name: ');
  final name = stdin.readLineSync() ?? ''; // erklären
  if (name.length > 10) {
    stdout.writeln('Huih. langer Name');
  } else {
    stdout.writeln('Standardname');
  }
  stdout.writeln('Programm beendet');
}
