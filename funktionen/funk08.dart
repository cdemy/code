void doABC(String message, int repititions) {
  // do A
  // do B
  for (var i = 0; i < repititions; i++) {
    print(message);
  }
  // do C
}

void main() {
  doABC('Hello World', 6);
  // do D
  doABC('Hallo Welt', 3);
  // do E
  doABC('Bonjour le monde', 2);
}
