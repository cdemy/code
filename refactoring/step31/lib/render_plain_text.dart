import 'package:intl/intl.dart';
import 'package:refactoring/render_values.dart';

abstract class Renderer {}

class PlainTextRenderer implements Renderer {
  const PlainTextRenderer(this.renderValues);

  final RenderValues renderValues;

  String toString() {
    String format(num aNumber) => NumberFormat('\$###.00', 'en_US').format(aNumber / 100);
    var result = 'Statement for ${renderValues.customer}\n';
    for (final perf in renderValues.performances) {
      result += '  ${perf.play.name}: ${format(renderValues.amounts[perf]!)} (${perf.audience} seats)\n';
    }
    result += 'Amount owed is ${format(renderValues.totalAmount)}\n';
    result += 'You earned ${renderValues.totalVolumeCredits} credits\n';
    return result;
  }
}

class HTMLRenderer implements Renderer {
  const HTMLRenderer(this.renderValues);

  final RenderValues renderValues;

  String toString() {
    String format(num aNumber) => NumberFormat('\$###.00', 'en_US').format(aNumber / 100);
    var result = '<h1>Statement for ${renderValues.customer}</h1>\n';
    for (final perf in renderValues.performances) {
      result += '  ${perf.play.name}: ${format(renderValues.amounts[perf]!)} (${perf.audience} seats)\n';
    }
    result += '<strong>Amount owed is ${format(renderValues.totalAmount)}</strong>\n';
    result += 'You earned ${renderValues.totalVolumeCredits} credits\n';
    return result;
  }
}
