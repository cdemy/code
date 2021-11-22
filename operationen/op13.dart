void main() {
  final name = 'Andreas';
  final age = 47;
  final combo1 = 'Dein Name ist ' + name + ', Du bist ' + age.toString() + ' und bald ' + (age + 1).toString() + '.';
  final combo2 = 'Dein Name ist $name, Du bist $age und bald ${age + 1}.';
}
