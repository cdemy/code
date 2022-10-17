class Teilnehmer {
  String name;
  String vorname;
  DateTime? geburtsdatum;

  Teilnehmer({this.name = 'Mustermann', this.vorname = 'Max', this.geburtsdatum});

  void addAbmahnung() {
    // Methode zum Hinzufügen einer Abmahnung
  }

  void delete() {
    // Methode zum Löschen des Teilnehmers
  }

  void showAnwesenheit() {
    // Methode zum Anzeigen der Anwesenheit
    print('Der TN namens $vorname $name ($geburtsdatum) war nie da');
  }
}

void main() {
  var tn1 = Teilnehmer();
  tn1.showAnwesenheit();
  tn1.name = "Mustermann";
  tn1.vorname = "Max";
  tn1.geburtsdatum = DateTime(1980, 1, 1);
  tn1.showAnwesenheit();
}
