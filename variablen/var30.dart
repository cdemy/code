void main() {
  final werte = [2, 5, 7, 1, 6, 2, 4, 9];
  print('Werte: $werte');
  print('Wert 3: ${werte[2]}');
  print('Wert 6: ${werte[5]}');
  werte[4] = 99;
  print('Werte: $werte');
  werte.add(1000);
  print('Werte: $werte');
  werte.removeAt(6);
  print('Werte: $werte');
}
