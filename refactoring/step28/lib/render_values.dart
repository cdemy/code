import 'package:refactoring/performance.dart';
import 'package:refactoring/play.dart';

class RenderValues {
  final String customer;
  final int totalVolumeCredits;
  final int totalAmount;
  final List<Performance> performances;
  const RenderValues({
    required this.customer,
    required this.totalVolumeCredits,
    required this.performances,
    required this.totalAmount,
  });
}
