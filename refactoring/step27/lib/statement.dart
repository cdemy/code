import 'dart:math';

import 'package:refactoring/invoice.dart';
import 'package:refactoring/performance.dart';
import 'package:refactoring/play.dart';
import 'package:refactoring/render_plain_text.dart';
import 'package:refactoring/render_values.dart';

String statement(Invoice invoice, Map<String, Play> plays) {
  int totalAmount(List<Performance> performances) => performances.fold(0, (p, n) => p + n.amount);

  int totalVolumeCredits(List<Performance> performances) => performances.fold(0, (p, n) => p + n.volumeCredits);

  final renderValues = RenderValues(
    customer: invoice.customer,
    performances: invoice.performances,
    totalVolumeCredits: totalVolumeCredits(invoice.performances),
    totalAmount: totalAmount(invoice.performances),
  );
  return renderPlainText(renderValues, plays);
}
