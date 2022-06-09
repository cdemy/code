int verdoppeln(int zahl) {
  return zahl * 2;
}

bool istZahlGerade(int zahl) {
  return zahl % 2 == 0;
}

String beurteilung(int zahl) {
  if (zahl > 100) {
    return "groß";
  } else {
    return "klein";
  }
}

void main() {
  print(verdoppeln(2));
  print(istZahlGerade(2));
  print(beurteilung(2));
  print(beurteilung(101));
}
