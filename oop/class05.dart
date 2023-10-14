// Herleitung von Klassen
//
// Jetzt haben wir aber schon ein weiteres Problem indirekt angesprochen. Wir haben nämlich gesagt, dass
// wie vielleicht auch Briefe an Dozenten senden wollen. Und da die Methode für das Versenden von Briefen
// an Teilnehmer jetzt Teil der Klasse Teilnehmer ist, ist auch klar, dass wir für Dozenten dann eine
// ähnliche Methode implementieren müssen.
//
// Wenn, wie ganz zu Beginn, die Methode schreibeBrief nur Parameter a la Vorname, Nachname, etc.
// erhalten würde, dann könnten wir die gleiche Methode sowohl für Dozenten als auch für Teilnehmer nutzen.
//
// Nur durch unsere Umbauten haben wir uns diesen Weg verbaut, denn (1. Fassung) die Funktion verlangte
// entweder einen Parameter vom Typ Teilnehmer oder (2. Fassung) sie ist als Methode sowieso Teil der
// Klasse Teilnehmer und nicht Teil von anderen Klassen.
//
// Und jetzt aber die eigentliche Frage:
//
// WARUM KANN MAN BRIEFE SOWOHL AN DOZENTEN ALS AUCH AN TEILNEHMER SCHREIBEN?
//
// Vererbung - aber nur ein Teaser
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
    durchschnittsnote: 1.5,
  );
  final dozent = Dozent(
    nachname: 'Brandt',
    vorname: 'Stefan',
    geburtstag: DateTime(1990, 1, 1),
    geschlecht: 1,
    adresse: 'Hinter der Gasse 1',
    plz: '34123',
    ort: 'Kassel',
    personalnummer: 3,
  );

  teilnehmer.schreibeBrief();
  dozent.schreibeBrief();
}

abstract class Person {
  String nachname;
  String vorname;
  DateTime geburtstag;
  int geschlecht;
  String adresse;
  String plz;
  String ort;

  Person({
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
}

class Teilnehmer extends Person {
  double durchschnittsnote;

  Teilnehmer({
    required String nachname,
    required String vorname,
    required DateTime geburtstag,
    required int geschlecht,
    required String adresse,
    required String plz,
    required String ort,
    required this.durchschnittsnote,
  }) : super(
          nachname: nachname,
          vorname: vorname,
          geburtstag: geburtstag,
          geschlecht: geschlecht,
          adresse: adresse,
          plz: plz,
          ort: ort,
        );
}

class Dozent extends Person {
  int personalnummer;

  Dozent({
    required String nachname,
    required String vorname,
    required DateTime geburtstag,
    required int geschlecht,
    required String adresse,
    required String plz,
    required String ort,
    required this.personalnummer,
  }) : super(
          nachname: nachname,
          vorname: vorname,
          geburtstag: geburtstag,
          geschlecht: geschlecht,
          adresse: adresse,
          plz: plz,
          ort: ort,
        );
}
