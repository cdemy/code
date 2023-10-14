void main() {
  final name = 'Andreas';
  final age = 47;
  final combo1 = 'Dein Name ist ' + name + ', Du bist ' + age.toString() + ' und bald ' + (age + 1).toString() + '.';
  print(combo1);
  final combo2 = 'Dein Name ist $name, Du bist $age und bald ${age + 1}.';
  print(combo2);
}
