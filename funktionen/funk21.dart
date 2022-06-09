void doSomething(int zahl) {
  if (zahl < 0) {
    return;
  }
  print('$zahl ist positiv');
  if (zahl % 2 != 0) {
    return;
  }
  print('$zahl ist gerade');
  if (zahl < 100) {
    print('... und groß');
  } else {
    print('... und klein');
  }
}

void main() {
  doSomething(24);
}
