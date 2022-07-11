import 'dart:math';

import 'package:refactoring/performance.dart';

abstract class PerformanceCalculator {
  // Constructs
  factory PerformanceCalculator(Performance performance) {
    switch (performance.play.type) {
      case ('comedy'):
        return PerformanceCalculatorComedy(performance);
      case ('tragedy'):
        return PerformanceCalculatorTragedy(performance);
      default:
        throw Exception('Kein gültiger Typ: ${performance.play.type}');
    }
  }

  // Getters
  int get amount;
  int get volumeCredits;
}

class PerformanceCalculatorComedy implements PerformanceCalculator {
  // Constructors
  const PerformanceCalculatorComedy(this.performance);

  // Fields
  final Performance performance;

  // Getters
  int get amount {
    var result = 30000;
    if (this.performance.audience > 20) {
      result += 10000 + 500 * (this.performance.audience - 20);
    }
    result += 300 * this.performance.audience;

    return result;
  }

  int get volumeCredits {
    var result = max(performance.audience - 30, 0);
    result += (performance.audience / 5).floor();
    return result;
  }
}

class PerformanceCalculatorTragedy implements PerformanceCalculator {
  // Constructors
  const PerformanceCalculatorTragedy(this.performance);

  // Fields
  final Performance performance;

  // Getters
  int get amount {
    var result = 40000;
    if (this.performance.audience > 30) {
      result += 1000 * (this.performance.audience - 30);
    }
    return result;
  }

  int get volumeCredits => max(performance.audience - 30, 0);
}
