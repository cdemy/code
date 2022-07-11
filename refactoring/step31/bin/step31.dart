import 'package:refactoring/output_format.dart';

import '../lib/statement.dart';
import '../lib/invoices.dart';

void main() {
  print("Started");
  print(Statement(invoice: invoices[0], outputFormat: OutputFormat.Text));
}
