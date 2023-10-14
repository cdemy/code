// Herleitung von Klassen
//
// Die Verwendung von Maps machte den Code schon deutlich einfacher auf der Anwendungsebene
// (also der void main in dem Fall), aber es blieb kompliziert in den Funktionen, denn hier
// musste man immer drauf achten, dass man die richtigen Keys nutzte un dass man auch die
// richtigen Variablentypen nutzt, denn notgedrungen waren alle Inhalte dynamic.
//
// 3) Und jetzt mit Klassen
//
//
void main() {
  final teilnehmer = Teilnehmer(
    nachname: 'Höfer',
    vorname: 'Andreas',
    geburtstag: DateTime(1974, 6, 24),
    geschlecht: 1,
    adresse: 'Batzweg 10',
    plz: '34212',
    ort: 'Melsungen',
  );

  // Wir rufen jetzt nach und nach die verschiedenen Methoden (siehe unten) auf
  schreibeBrief(teilnehmer); // Das ist viel einfacher!
  hatGeburtstag(teilnehmer);
  anrede(teilnehmer);
  sgdh(teilnehmer);
}

class Teilnehmer {
  String nachname;
  String vorname;
  DateTime geburtstag;
  int geschlecht;
  String adresse;
  String plz;
  String ort;

  Teilnehmer({
    required this.nachname,
    required this.vorname,
    required this.geburtstag,
    required this.geschlecht,
    required this.adresse,
    required this.plz,
    required this.ort,
  });
}

void schreibeBrief(Teilnehmer teilnehmer) {
  print(
      'Brief an ${teilnehmer.vorname} ${teilnehmer.nachname}, ${teilnehmer.adresse} in ${teilnehmer.plz} ${teilnehmer.ort}');
}

void hatGeburtstag(Teilnehmer teilnehmer) {
  final now = DateTime.now();
  final hatGeburtstag = teilnehmer.geburtstag.year == now.year &&
      teilnehmer.geburtstag.month == now.month &&
      teilnehmer.geburtstag.day == now.day;
  if (hatGeburtstag) {
    print('TN hat Geburtstag');
  } else {
    print('TN hat nicht Geburtstag');
  }
}

void anrede(Teilnehmer teilnehmer) {
  if (teilnehmer.geschlecht == 1) {
    print('Anrede: Herr');
  } else if (teilnehmer.geschlecht == 2) {
    print('Anrede: Frau');
  } else {
    print('Anrede: Herr/Frau');
  }
}

void sgdh(Teilnehmer teilnehmer) {
  if (teilnehmer.geschlecht == '1') {
    print('Sehr geehrter Herr ${teilnehmer.nachname}');
  } else if (teilnehmer.geschlecht == '2') {
    print('Sehr geehrte Frau ${teilnehmer.nachname}');
  } else {
    print('Sehr geehrte(r) Herr/Frau ${teilnehmer.nachname}');
  }
}
// Die Fehler in sgdh werden durch Linting sichtbar (siehe analysis_options.yaml)
