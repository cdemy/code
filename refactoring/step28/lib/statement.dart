import 'package:refactoring/invoice.dart';
import 'package:refactoring/render_plain_text.dart';
import 'package:refactoring/render_values.dart';

String statement(Invoice invoice) {
  final renderValues = RenderValues(
    customer: invoice.customer,
    performances: invoice.performances,
    totalVolumeCredits: invoice.totalVolumeCredits,
    totalAmount: invoice.totalAmount,
  );
  return renderPlainText(renderValues);
}
