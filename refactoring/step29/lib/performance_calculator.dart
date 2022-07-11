import 'package:refactoring/performance.dart';

abstract class PerformanceCalculator {
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
  int get amount;
}

class PerformanceCalculatorComedy implements PerformanceCalculator {
  final Performance performance;
  const PerformanceCalculatorComedy(this.performance);

  int get amount {
    var result = 30000;
    if (this.performance.audience > 20) {
      result += 10000 + 500 * (this.performance.audience - 20);
    }
    result += 300 * this.performance.audience;

    return result;
  }
}

class PerformanceCalculatorTragedy implements PerformanceCalculator {
  final Performance performance;
  const PerformanceCalculatorTragedy(this.performance);

  int get amount {
    var result = 40000;
    if (this.performance.audience > 30) {
      result += 1000 * (this.performance.audience - 30);
    }
    return result;
  }
}
