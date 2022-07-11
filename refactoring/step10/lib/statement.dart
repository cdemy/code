import 'package:intl/intl.dart';
import 'dart:math' as Math;

import 'package:refactoring/invoice.dart';
import 'package:refactoring/performance.dart';
import 'package:refactoring/play.dart';

String statement(Invoice invoice, Map<String, Play> plays) {
  int amountFor(Performance aPerformance, Play play) {
    var result = 0;
    switch (play.type) {
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
        throw new Exception('unknown type: ${play.type}');
    }
    return result;
  }

  Play playFor(Performance aPerformance) => plays[aPerformance.playId]!;

  var totalAmount = 0;
  var volumeCredits = 0;
  var result = 'Statement for ${invoice.customer}\n';
  final format = NumberFormat('\$###.00', 'en_US');
  for (final perf in invoice.performances) {
    final play = playFor(perf);

    int thisAmount = amountFor(perf, play);

    // add volume credits
    volumeCredits += Math.max(perf.audience - 30, 0);
    // add extra credit for every ten comedy attendees
    if ("comedy" == play.type) volumeCredits += (perf.audience / 5).floor();

    // print line for this order
    result += '  ${play.name}: ${format.format(thisAmount / 100)} (${perf.audience} seats)\n';
    totalAmount += thisAmount;
  }
  result += 'Amount owed is ${format.format(totalAmount / 100)}\n';
  result += 'You earned ${volumeCredits} credits\n';
  return result;
}
