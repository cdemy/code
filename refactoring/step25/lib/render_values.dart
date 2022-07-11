import 'package:refactoring/performance.dart';
import 'package:refactoring/play.dart';

class RenderValues {
  final String customer;
  final int totalVolumeCredits;
  final int totalAmount;
  final List<Performance> performances;
  final Map<Performance, Play> performancePlays;
  final Map<Performance, int> performanceAmounts;
  const RenderValues({
    required this.customer,
    required this.totalVolumeCredits,
    required this.performances,
    required this.performancePlays,
    required this.performanceAmounts,
    required this.totalAmount,
  });
}
