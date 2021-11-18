import 'dart:math';

void main() {
  const zeichenkette1 = 'Hallo';
  const zeichenkette2 = 'Welt';
  const zeichenkette1Laenge = zeichenkette1.length;
  final zufallszahl = Random().nextInt(100); // Zufallszahl von 0 bis 99
  print('Beide Strings zusammen: $zeichenkette1 $zeichenkette2');
  print('Die Länge des ersten Strings: $zeichenkette1Laenge');
  print('Zufallszahl: $zufallszahl');
}
