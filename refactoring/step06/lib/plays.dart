import 'package:refactoring/play.dart';

const plays = {
  "hamlet": {"name": "Hamlet", "type": "tragedy"},
  "as-like": {"name": "As You Like It", "type": "comedy"},
  "othello": {"name": "Othello", "type": "tragedy"}
};

const newPlays = {
  "hamlet": Play(name: 'Hamlet', type: 'tragedy'),
  "as-like": Play(name: 'As You Like It', type: 'comedy'),
  "othello": Play(name: 'Othello', type: 'tragedy'),
};
