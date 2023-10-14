// Herleitung von Klassen
//
// Das war alles sehr umständlich und auch fehleranfällig.
//
// - Umständlich, weil man sehr viele Variablen jeweils übergeben muss
//
// - Fehleranfällig, weil man immer gucken muss, dass man auch die richtigen Variablen übergibt.
//
// 2) Alternative Herangehensweise: Maps
//
// Durchgehen, dann debuggen
//
void main() {
  final teilnehmer = {
    'Nachname': 'Höfer',
    'Vorname': 'Andreas',
    'Geburtstag': DateTime(1974, 6, 24),
    'Geschlecht': 1,
    'Adresse': 'Batzweg 10',
    'Plz': '34212',
    'Ort': 'Melsungen',
  };

  // Wir rufen jetzt nach und nach die verschiedenen Methoden (siehe unten) auf
  schreibeBrief(teilnehmer); // Das ist viel einfacher!
  hatGeburtstag(teilnehmer);
  anrede(teilnehmer);
  sgdh(teilnehmer);
}

void schreibeBrief(Map teilnehmer) {
  print(
      'Brief an ${teilnehmer['Vorname']} ${teilnehmer['Nachname']}, ${teilnehmer['Adresse']} in ${teilnehmer['Plz']} ${teilnehmer['Ort']}');
}

void hatGeburtstag(Map teilnehmer) {
  final now = DateTime.now();
  final geburtstag = teilnehmer['Geburtstag'];
  final hatGeburtstag = geburtstag.year == now.year && geburtstag.month == now.month && geburtstag.day == now.day;
  if (hatGeburtstag) {
    print('TN hat Geburtstag');
  } else {
    print('TN hat nicht Geburtstag');
  }
}

void anrede(Map teilnehmer) {
  if (teilnehmer['geschlecht'] == 1) {
    print('Anrede: Herr');
  } else if (teilnehmer['geschlecht'] == 2) {
    print('Anrede: Frau');
  } else {
    print('Anrede: Herr/Frau');
  }
}

void sgdh(Map teilnehmer) {
  if (teilnehmer['Geschtecht'] == '1') {
    print('Sehr geehrter Herr ${teilnehmer['Nachname']}');
  } else if (teilnehmer['Geschlecht'] == '2') {
    print('Sehr geehrte Frau ${teilnehmer['Nachname']}');
  } else {
    print('Sehr geehrte(r) Herr/Frau ${teilnehmer['Nachname']}');
  }
}
