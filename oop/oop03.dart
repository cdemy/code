class Teilnehmer {
  final String name;
  final String vorname;

  Teilnehmer(this.name, this.vorname);

  void showInfo() {
    print('Der TN heißt $vorname $name.');
  }
}

void main() {
  var tn1 = Teilnehmer('Höfer', 'Andreas');
  tn1.showInfo();
  // tn1.name = "Mustermann";geht nicht
  // tn1.vorname = "Max";
  tn1.showInfo();
}
