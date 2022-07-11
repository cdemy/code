import 'package:refactoring/performance.dart';

class RenderValues {
  // Constructors
  const RenderValues({
    required this.customer,
    required this.totalVolumeCredits,
    required this.performances,
    required this.totalAmount,
    required this.amounts,
    required this.playNames,
  });

  // Fields
  final String customer;
  final int totalVolumeCredits;
  final int totalAmount;
  final List<Performance> performances;
  final Map<Performance, int> amounts;
  final Map<Performance, String> playNames;
}
