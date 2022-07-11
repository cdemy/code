import 'performance_calculator.dart';
import 'play.dart';
import 'plays.dart';

class Performance {
  // Constctors
  const Performance({required this.playId, required this.audience});

  // Fields
  final String playId;
  final int audience;

  // Getters
  int get amount => performanceCalculator.amount;
  PerformanceCalculator get performanceCalculator => PerformanceCalculator(this);
  Play get play => plays[this.playId]!;
  int get volumeCredits => performanceCalculator.volumeCredits;
}
