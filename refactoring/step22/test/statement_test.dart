import 'package:refactoring/invoices.dart';
import 'package:refactoring/plays.dart';
import 'package:refactoring/statement.dart';
import 'package:test/test.dart';

void main() {
  test('Raw output of statement: #0', () {
    final result = statement(invoices[0], plays);
    final wanted =
        'Statement for BigCo\n  Hamlet: \$650.00 (55 seats)\n  As You Like It: \$580.00 (35 seats)\n  Othello: \$500.00 (40 seats)\nAmount owed is \$1730.00\nYou earned 47 credits\n';
    expect(result, wanted);
  });
  test('Raw output of statement: #1', () {
    final result = statement(invoices[1], plays);
    final wanted =
        'Statement for Test1\n  As You Like It: \$1260.00 (120 seats)\n  Othello: \$400.00 (10 seats)\nAmount owed is \$1660.00\nYou earned 114 credits\n';
    expect(result, wanted);
  });
  test('Raw output of statement: #2', () {
    final result = statement(invoices[2], plays);
    final wanted =
        'Statement for Test2\n  Hamlet: \$1600.00 (150 seats)\n  Othello: \$400.00 (10 seats)\nAmount owed is \$2000.00\nYou earned 120 credits\n';
    expect(result, wanted);
  });
}
