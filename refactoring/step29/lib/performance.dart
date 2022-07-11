import 'dart:math';

import 'package:refactoring/performance_calculator.dart';

import 'play.dart';
import 'plays.dart';

class Performance {
  final String playId;
  final int audience;
  PerformanceCalculator get performanceCalculator => PerformanceCalculator(this);

  const Performance({required this.playId, required this.audience});

  int get amount => performanceCalculator.amount;

  Play get play => plays[this.playId]!;

  int get volumeCredits {
    var result = max(this.audience - 30, 0);
    if ("comedy" == this.play.type) result += (this.audience / 5).floor();
    return result;
  }
}
