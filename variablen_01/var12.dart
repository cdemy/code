import 'dart:math';

void main() {
  var zeichenkette1 = 'Hallo';
  var zeichenkette2 = 'Welt';
  var zeichenkette1Laenge = zeichenkette1.length;
  var zufallszahl = Random().nextInt(100); // Zufallszahl von 0 bis 99
  print('Beide Strings zusammen: $zeichenkette1 $zeichenkette2');
  print('Die Länge des ersten Strings: $zeichenkette1Laenge');
  print('Zufallszahl: $zufallszahl');
}
