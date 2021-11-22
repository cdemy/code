void main() {
  final priceNet = 37.56;
  final priceGros = priceNet * 1.19;
  final gros1 = priceGros.toString() + ' €';
  final gros2 = priceGros.toStringAsFixed(2) + ' €';
}
