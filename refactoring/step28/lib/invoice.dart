import 'package:refactoring/performance.dart';

class Invoice {
  final String customer;
  final List<Performance> performances;

  const Invoice({required this.customer, required this.performances});

  int get totalAmount => performances.fold(0, (p, n) => p + n.amount);

  int get totalVolumeCredits => performances.fold(0, (p, n) => p + n.volumeCredits);
}
