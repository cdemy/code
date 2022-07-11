import 'package:intl/intl.dart';
import 'dart:math' as Math;

import 'package:refactoring/invoice.dart';

String statement(Invoice invoice, Map<String, Map<String, dynamic>> plays) {
  var totalAmount = 0;
  var volumeCredits = 0;
  var result = 'Statement for ${invoice.customer}\n';
  final format = NumberFormat('\$###.00', 'en_US');
  for (final perf in invoice.performances) {
    final play = plays[perf.playId]!;
    var thisAmount = 0;

    switch (play['type']) {
      case "tragedy":
        thisAmount = 40000;
        if (perf.audience > 30) {
          thisAmount += 1000 * (perf.audience - 30);
        }
        break;
      case "comedy":
        thisAmount = 30000;
        if (perf.audience > 20) {
          thisAmount += 10000 + 500 * (perf.audience - 20);
        }
        thisAmount += 300 * perf.audience;
        break;
      default:
        throw new Exception('unknown type: ${play['type']}');
    }

    // add volume credits
    volumeCredits += Math.max(perf.audience - 30, 0);
    // add extra credit for every ten comedy attendees
    if ("comedy" == play['type']) volumeCredits += (perf.audience / 5).floor();

    // print line for this order
    result += '  ${play['name']}: ${format.format(thisAmount / 100)} (${perf.audience} seats)\n';
    totalAmount += thisAmount;
  }
  result += 'Amount owed is ${format.format(totalAmount / 100)}\n';
  result += 'You earned ${volumeCredits} credits\n';
  return result;
}
