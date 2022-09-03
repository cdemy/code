class Teilnehmer {
  String name;
  String vorname;

  Teilnehmer(this.name, this.vorname);

  void showInfo() {
    print('Der TN heißt $vorname $name.');
  }
}

void main() {
  var tn1 = Teilnehmer('Höfer', 'Andreas');
  tn1.showInfo();
  tn1.name = "Mustermann";
  tn1.vorname = "Max";
  tn1.showInfo();
}
