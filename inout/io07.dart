void main() {
  final priceNet = 37.56;
  final priceGros = priceNet * 1.19;
  print('Der Preis für dieses Produkt ist: ' + priceGros.toString() + ' €');
  print('Der Preis für dieses Produkt ist: ' + priceGros.toStringAsFixed(2) + ' €');
}
