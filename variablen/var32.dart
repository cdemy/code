void main() {
  const wochentage = {
    1: 'Montag',
    2: 'Dienstag',
    3: 'Mittwoch',
    4: 'Donnerstag',
    5: 'Freitag',
    6: 'Samstag',
    7: 'Sonntag'
  };
  final today = DateTime.now();
  print('Heute ist der ${today.day}.${today.month}.${today.year}');
  print('Es ist ${today.hour}:${today.minute} Uhr.');
  print('Heute ist ein ${wochentage[today.weekday]}.');

  final tomorrow = today.add(Duration(days: 1));
  print('Morgen ist der ${tomorrow.day}.${tomorrow.month}.${tomorrow.year}.');

  final firstOfMonth = DateTime(today.year, today.month, 1);
  print('Der Erste dieses Monats war ein ${wochentage[firstOfMonth.weekday]}.');

  final firstOfNextMonth = DateTime(today.year, today.month + 1, 1);
  final lastOfMonth = firstOfNextMonth.subtract(Duration(days: 1));
  print('Dieser Monat hat übrigens ${lastOfMonth.day} Tage.');
}
