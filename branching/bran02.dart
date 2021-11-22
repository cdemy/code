// Please start manually
// dart run bran02.dart
import 'dart:io';

void main() {
  stdout.write('Dein Name: ');
  final name = stdin.readLineSync();
  if (name == 'Andreas') {
    stdout.writeln('Ich kenne Dich!');
  }
  stdout.writeln('Programm beendet');
}
