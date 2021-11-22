import 'dart:io';

// muss über 'dart run io08.dart' aufgerufen werden
// (aus dem richtigen Verzeichnis)

void main() {
  print('Dein Name:');
  final name = stdin.readLineSync();
  print('Eingegebener Name: $name');
}
