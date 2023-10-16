void showMessagePositional(String message, [int repititions = 1]) {
  for (var i = 0; i < repititions; i++) {
    print(message);
  }
}

void showMessageNamed({required String message, int repititions = 1}) {
  for (var i = 0; i < repititions; i++) {
    print(message);
  }
}

void main() {
  showMessagePositional('Hallo Welt', 1);
  showMessagePositional('Hallo Welt');
  // showMessagePositional(3, 'Hallo Welt'); // geht nicht
  showMessageNamed(message: 'Hallo Welt', repititions: 3);
  showMessageNamed(message: 'Hallo Welt');
  showMessageNamed(repititions: 3, message: 'Hallo Welt');
}
