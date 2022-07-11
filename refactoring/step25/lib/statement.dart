import 'dart:math';

import 'package:refactoring/invoice.dart';
import 'package:refactoring/performance.dart';
import 'package:refactoring/play.dart';
import 'package:refactoring/render_plain_text.dart';
import 'package:refactoring/render_values.dart';

String statement(Invoice invoice, Map<String, Play> plays) {
  Play playFor(Performance aPerformance) => plays[aPerformance.playId]!;

  int amountFor(Performance aPerformance) {
    var result = 0;
    switch (playFor(aPerformance).type) {
      case "tragedy":
        result = 40000;
        if (aPerformance.audience > 30) {
          result += 1000 * (aPerformance.audience - 30);
        }
        break;
      case "comedy":
        result = 30000;
        if (aPerformance.audience > 20) {
          result += 10000 + 500 * (aPerformance.audience - 20);
        }
        result += 300 * aPerformance.audience;
        break;
      default:
        throw new Exception('unknown type: ${playFor(aPerformance).type}');
    }
    return result;
  }

  int totalAmount(List<Performance> performances) => performances.fold(0, (p, n) => p + amountFor(n));

  int volumeCreditsFor(Performance aPerformance) {
    var result = max(aPerformance.audience - 30, 0);
    // add extra credit for every ten comedy attendees
    if ("comedy" == playFor(aPerformance).type) result += (aPerformance.audience / 5).floor();
    return result;
  }

  int totalVolumeCredits(List<Performance> performances) => performances.fold(0, (p, n) => p + volumeCreditsFor(n));

  var performancePlays = <Performance, Play>{};
  var performanceAmounts = <Performance, int>{};
  for (final perf in invoice.performances) {
    performancePlays[perf] = playFor(perf);
    performanceAmounts[perf] = amountFor(perf);
  }

  final renderValues = RenderValues(
    customer: invoice.customer,
    performances: invoice.performances,
    totalVolumeCredits: totalVolumeCredits(invoice.performances),
    performancePlays: performancePlays,
    performanceAmounts: performanceAmounts,
    totalAmount: totalAmount(invoice.performances),
  );
  return renderPlainText(renderValues, plays);
}
