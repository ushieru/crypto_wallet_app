class CryptoCoin {
  final String id;
  final String symbol;
  final String name;
  final String image;
  final double currentPrice;

  CryptoCoin(this.id, this.symbol, this.name, this.image, this.currentPrice);

  factory CryptoCoin.fromJSON(dynamic json) {
    return CryptoCoin(
      json['id'],
      json['symbol'],
      json['name'],
      json['image'],
      double.tryParse('${json['current_price']}') ?? 0.0,
    );
  }
}
