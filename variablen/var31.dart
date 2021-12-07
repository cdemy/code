void main() {
  final person = {'vorname': 'Andreas', 'nachname': 'Höfer'};
  print('Person: $person');
  print('Vorname: ${person['vorname']}');
  person['vorname'] = 'Mariia';
  // person['alter'] = 30; geht nicht
  person['alter'] = '39';
  print('Person: $person');
  final anderer = {};
  anderer['nachname'] = 'Heinicke';
  anderer['alter'] = 25;
  print('Anderer: $anderer');
}
