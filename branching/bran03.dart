// Please start manually
// dart run bran03.dart
import 'dart:io';

void main() {
  stdout.write('Dein Name: ');
  final name = stdin.readLineSync();
  if (name == 'Andreas') {
    stdout.writeln('Ich kenne Dich!');
  } else {
    stdout.writeln('Ich kenne Dich nicht');
  }
  stdout.writeln('Programm beendet');
}
