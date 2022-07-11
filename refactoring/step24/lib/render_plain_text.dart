import 'package:intl/intl.dart';
import 'package:refactoring/play.dart';
import 'package:refactoring/render_values.dart';

String renderPlainText(RenderValues renderValues, Map<String, Play> plays) {
  String format(num aNumber) => NumberFormat('\$###.00', 'en_US').format(aNumber / 100);
  var result = 'Statement for ${renderValues.customer}\n';
  for (final perf in renderValues.performances) {
    // print line for this order
    result +=
        '  ${renderValues.performancePlays[perf]!.name}: ${format(renderValues.performanceAmounts[perf]!)} (${perf.audience} seats)\n';
  }
  result += 'Amount owed is ${format(renderValues.totalAmount)}\n';
  result += 'You earned ${renderValues.totalVolumeCredits} credits\n';
  return result;
}
