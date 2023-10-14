// Herleitung von Klassen
//
// Angenommen wir haben neben Teilnehmern auch Dozenten, Angestellte und diverse andere Datenobjekte.
//
// Und allen schreiben wir auch Briefe. Es würde mit der Zeit relativ unübersichtlich, die ganzen
// schreibeBrief-Methoden aufzufächern schreibeBriefAnTeilnehmer, schreibeBriefAnDozent usw.
//
// Kernkonzept der OOP ist daher, die Funktionen in die Klassen, zu denen sie gehören, zu verschieben.
//
// 4) Wir schieben jetzt die Funktionen in Klassen - und dann nennt man sie Methoden
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

  teilnehmer.schreibeBrief(); // Wir übergeben nur noch zusätzliche Argumente wenn nötig
  teilnehmer.hatGeburtstag(); // Durch die Notation ist klar, dass wir die Methoden auf dem teilnehmer aufrufen
  teilnehmer.anrede();
  teilnehmer.sgdh();
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

  void schreibeBrief() {
    print('Brief an $vorname $nachname, $adresse in $plz $ort');
  }

  void hatGeburtstag() {
    final now = DateTime.now();
    final hatGeburtstag = geburtstag.year == now.year && geburtstag.month == now.month && geburtstag.day == now.day;
    if (hatGeburtstag) {
      print('TN hat Geburtstag');
    } else {
      print('TN hat nicht Geburtstag');
    }
  }

  void anrede() {
    if (geschlecht == 1) {
      print('Anrede: Herr');
    } else if (geschlecht == 2) {
      print('Anrede: Frau');
    } else {
      print('Anrede: Herr/Frau');
    }
  }

  void sgdh() {
    if (geschlecht == 1) {
      print('Sehr geehrter Herr ${nachname}');
    } else if (geschlecht == 2) {
      print('Sehr geehrte Frau ${nachname}');
    } else {
      print('Sehr geehrte(r) Herr/Frau ${nachname}');
    }
  }
}
