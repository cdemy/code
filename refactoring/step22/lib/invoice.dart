import 'package:refactoring/performance.dart';

class Invoice {
  final String customer;
  final List<Performance> performances;

  const Invoice({required this.customer, required this.performances});
}
