import 'dart:math';

import 'package:refactoring/invoice.dart';
import 'package:refactoring/performance.dart';
import 'package:refactoring/play.dart';
import 'package:refactoring/render_plain_text.dart';
import 'package:refactoring/render_values.dart';

String statement(Invoice invoice, Map<String, Play> plays) {
  int totalAmount(List<Performance> performances) => performances.fold(0, (p, n) => p + n.amount);

  int volumeCreditsFor(Performance aPerformance) {
    var result = max(aPerformance.audience - 30, 0);
    // add extra credit for every ten comedy attendees
    if ("comedy" == aPerformance.play.type) result += (aPerformance.audience / 5).floor();
    return result;
  }

  int totalVolumeCredits(List<Performance> performances) => performances.fold(0, (p, n) => p + volumeCreditsFor(n));

  final renderValues = RenderValues(
    customer: invoice.customer,
    performances: invoice.performances,
    totalVolumeCredits: totalVolumeCredits(invoice.performances),
    totalAmount: totalAmount(invoice.performances),
  );
  return renderPlainText(renderValues, plays);
}
