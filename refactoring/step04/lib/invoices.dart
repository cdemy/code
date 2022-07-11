import 'package:refactoring/invoice.dart';
import 'package:refactoring/performance.dart';

const newInvoices = [
  Invoice(
    customer: 'BigCo',
    performances: [
      Performance(playId: "hamlet", audience: 55),
      Performance(playId: "as-like", audience: 35),
      Performance(playId: "othello", audience: 40)
    ],
  ),
  Invoice(
    customer: 'Test1',
    performances: [
      Performance(playId: "as-like", audience: 120),
      Performance(
        playId: "othello",
        audience: 10,
      ),
    ],
  ),
  Invoice(
    customer: 'Test2',
    performances: [
      Performance(playId: "hamlet", audience: 150),
      Performance(
        playId: "othello",
        audience: 10,
      ),
    ],
  ),
];
