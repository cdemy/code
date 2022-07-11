import 'package:refactoring/invoice.dart';
import 'package:refactoring/play.dart';
import 'package:refactoring/render_plain_text.dart';
import 'package:refactoring/render_values.dart';

String statement(Invoice invoice, Map<String, Play> plays) {
  final renderValues = RenderValues(
    customer: invoice.customer,
  );
  return renderPlainText(renderValues, invoice, plays);
}
