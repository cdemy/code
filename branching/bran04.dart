// Please start manually
// dart run bran04.dart
import 'dart:io';

void main() {
  stdout.write('Dein Name: ');
  final name = stdin.readLineSync();
  if (name != 'Andreas') {
    stdout.writeln('Du bist nicht Andreas');
  } else {
    stdout.writeln('Du bist es!');
  }
  stdout.writeln('Programm beendet');
}
