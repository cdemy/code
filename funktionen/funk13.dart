void showMyMessage(String message, [int repititions = 1]) {
  for (var i = 0; i < repititions; i++) {
    print(message);
  }
}

void main() {
  showMyMessage('Hallo Welt', 1);
  showMyMessage('Hallo Welt');
}
