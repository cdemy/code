// ignore_for_file: dead_code

void main() {
  var name = 'Andreas';
  final ja = true;
  if (ja) {
    var name = 'Frank';
    print('In dem Branch: $name');
  } else {
    var name = 'Hans';
    print('In dem Branch: $name');
  }
  print('Ergebnis: $name');
}
