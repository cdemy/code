import 'package:intl/intl.dart';
import 'package:refactoring/render_values.dart';

String renderPlainText(RenderValues renderValues) {
  String format(num aNumber) => NumberFormat('\$###.00', 'en_US').format(aNumber / 100);
  var result = 'Statement for ${renderValues.customer}\n';
  for (final perf in renderValues.performances) {
    result += '  ${perf.play.name}: ${format(renderValues.amounts[perf]!)} (${perf.audience} seats)\n';
  }
  result += 'Amount owed is ${format(renderValues.totalAmount)}\n';
  result += 'You earned ${renderValues.totalVolumeCredits} credits\n';
  return result;
}
