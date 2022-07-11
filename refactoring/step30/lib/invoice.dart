import 'package:refactoring/performance.dart';

class Invoice {
  // Constructors
  const Invoice({required this.customer, required this.performances});

  // Fields
  final String customer;
  final List<Performance> performances;

  // Getters
  int get totalAmount => performances.fold(0, (p, n) => p + n.amount);
  int get totalVolumeCredits => performances.fold(0, (p, n) => p + n.volumeCredits);
}
