import 'package:refactoring/invoice.dart';
import 'package:refactoring/performance.dart';
import 'package:refactoring/render_plain_text.dart';
import 'package:refactoring/render_values.dart';

String statement(Invoice invoice) {
  final amounts = <Performance, int>{};
  invoice.performances.forEach((e) {
    amounts[e] = e.performanceCalculator.amount;
  });
  final playNames = <Performance, String>{};
  invoice.performances.forEach((e) {
    playNames[e] = e.play.name;
  });
  final renderValues = RenderValues(
    customer: invoice.customer,
    performances: invoice.performances,
    totalVolumeCredits: invoice.totalVolumeCredits,
    totalAmount: invoice.totalAmount,
    amounts: amounts,
    playNames: playNames,
  );
  return renderPlainText(renderValues);
}
