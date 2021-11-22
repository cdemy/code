void main() {
  final irgendwas = 13;
  if (irgendwas is String) {
    print('Irgendwas ist ein String');
  } else {
    print('Irgendwas ist was anderes: ${irgendwas.runtimeType}');
  }
}
