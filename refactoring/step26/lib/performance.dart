import 'play.dart';
import 'plays.dart';

class Performance {
  final String playId;
  final int audience;

  const Performance({required this.playId, required this.audience});

  Play get play => plays[this.playId]!;

  int get amount {
    var result = 0;
    switch (this.play.type) {
      case "tragedy":
        result = 40000;
        if (this.audience > 30) {
          result += 1000 * (this.audience - 30);
        }
        break;
      case "comedy":
        result = 30000;
        if (this.audience > 20) {
          result += 10000 + 500 * (this.audience - 20);
        }
        result += 300 * this.audience;
        break;
      default:
        throw new Exception('unknown type: ${this.play.type}');
    }
    return result;
  }
}
