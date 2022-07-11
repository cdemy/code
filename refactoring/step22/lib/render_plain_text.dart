import 'package:intl/intl.dart';
import 'package:refactoring/play.dart';
import 'package:refactoring/render_values.dart';
import 'dart:math' as Math;

import 'invoice.dart';
import 'performance.dart';

String renderPlainText(RenderValues renderValues, Invoice invoice, Map<String, Play> plays) {
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

  String format(num aNumber) => NumberFormat('\$###.00', 'en_US').format(aNumber / 100);

  int volumeCreditsFor(Performance aPerformance) {
    var result = Math.max(aPerformance.audience - 30, 0);
    // add extra credit for every ten comedy attendees
    if ("comedy" == playFor(aPerformance).type) result += (aPerformance.audience / 5).floor();
    return result;
  }

  int totalAmount() {
    var result = 0;
    for (final perf in invoice.performances) {
      result += amountFor(perf);
    }
    return result;
  }

  int totalVolumeCredits() {
    var result = 0;
    for (final perf in invoice.performances) {
      result += volumeCreditsFor(perf);
    }
    return result;
  }

  var result = 'Statement for ${renderValues.customer}\n';
  for (final perf in invoice.performances) {
    // print line for this order
    result += '  ${playFor(perf).name}: ${format(amountFor(perf))} (${perf.audience} seats)\n';
  }
  result += 'Amount owed is ${format(totalAmount())}\n';
  result += 'You earned ${totalVolumeCredits()} credits\n';
  return result;
}
