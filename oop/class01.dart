// Herleitung von Klassen
//
// Angenommen wir wollen Teilnehmer verwalten, welche die folgenden Eigenschaften haben
// - Nachname
// - Vorname
// - Geburtstag
// - Geschlecht (0 = unbekannt, 1 = männlich, 2 = weiblich, 3 = divers)
// - Adresse
// - PLZ
// - Ort
//
// Wir haben zudem verschiedene Methoden, Variablen, die etwas mit dem TN tun - und dafür jeweils verschiedene
// Informationen benötigen.
//
// schreibeBrief: Benötigt Nachname, Vorname, Adresse, PLZ, Ort
// hatGeburtstag: Benötigt Geburtstag
// anrede: Benötigt Geschlecht
// sgdh: Benötigt Geschlecht und Nachname
//
// (Alle Funktionen sind als void implementiert, könnten aber genausogut zB Rückgabewerte haben)
// (Funktionen mit mehr als 1 Parameter sind als mit benannten Parametern definiert wg. Lesbarkeit)
//
// 1) Herkömmliche Herangehensweise

void main() {
  // Die Variablenbelegung erfolgt normal nicht im Code, aber zB dynamisch aus Datenbank
  final tnNachname = 'Höfer';
  final tnVorname = 'Andreas';
  final tnGeburtstag = DateTime(1974, 6, 24);
  final tnGeschlecht = 1;
  final tnAdresse = 'Batzweg 10';
  final tnPlz = '34212';
  final tnOrt = 'Melsungen';

  // Wir rufen jetzt nach und nach die verschiedenen Methoden (siehe unten) auf
  schreibeBrief(
    nachname: tnNachname, // KONZENTRATION NOTWENDIG!
    vorname: tnVorname,
    adresse: tnAdresse,
    plz: tnPlz,
    ort: tnOrt,
  );
  hatGeburtstag(tnGeburtstag);
  anrede(tnGeschlecht);
  sgdh(
    geschlecht: tnGeschlecht,
    nachname: tnNachname,
  );
}

void schreibeBrief(
    {required String nachname,
    required String vorname,
    required String adresse,
    required String plz,
    required String ort}) {
  print('Brief an $vorname $nachname, $adresse in $plz $ort');
}

void hatGeburtstag(DateTime geburtstag) {
  final now = DateTime.now();
  final hatGeburtstag = geburtstag.year == now.year && geburtstag.month == now.month && geburtstag.day == now.day;
  if (hatGeburtstag) {
    print('TN hat Geburtstag');
  } else {
    print('TN hat nicht Geburtstag');
  }
}

void anrede(int geschlecht) {
  if (geschlecht == 1) {
    print('Anrede: Herr');
  } else if (geschlecht == 2) {
    print('Anrede: Frau');
  } else {
    print('Anrede: Herr/Frau');
  }
}

void sgdh({required int geschlecht, required String nachname}) {
  if (geschlecht == 1) {
    print('Sehr geehrter Herr $nachname');
  } else if (geschlecht == 2) {
    print('Sehr geehrte Frau $nachname');
  } else {
    print('Sehr geehrte(r) Herr/Frau $nachname');
  }
}
