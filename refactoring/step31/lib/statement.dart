import 'package:refactoring/invoice.dart';
import 'package:refactoring/output_format.dart';
import 'package:refactoring/performance.dart';
import 'package:refactoring/render_plain_text.dart';
import 'package:refactoring/render_values.dart';

abstract class Statement {
  String toString();

  factory Statement({
    required Invoice invoice,
    required OutputFormat outputFormat,
  }) {
    switch (outputFormat) {
      case (OutputFormat.HTML):
        return HTMLStatement(invoice);
      case (OutputFormat.Text):
        return PlainTextStatement(invoice);
      default:
        throw Exception('Unhandled OutputFormat');
    }
  }
}

class PlainTextStatement implements Statement {
  // Constructors
  const PlainTextStatement(this.invoice);

  // Fields
  final Invoice invoice;

  String toString() {
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
    return PlainTextRenderer(renderValues).toString();
  }
}

class HTMLStatement implements Statement {
  // Constructors
  const HTMLStatement(this.invoice);

  // Fields
  final Invoice invoice;

  String toString() {
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
    return HTMLRenderer(renderValues).toString();
  }
}
