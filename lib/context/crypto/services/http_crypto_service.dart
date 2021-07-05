import 'dart:convert';

import 'package:crypto_wallet_app/context/crypto/model/crypto_coin.dart';
import 'package:crypto_wallet_app/context/crypto/model/crypto_coin_repository.dart';
import 'package:http/http.dart' as http;

class HTTPCryptoService extends CryptoCoinRepository {
  @override
  Future<List<CryptoCoin>> getCoins() async {
    var cryptoCoinList = List<CryptoCoin>.empty(growable: true);
    final url = Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd');
    final response = await http.get(url);

    final jsonResposne = jsonDecode(response.body);

    List.from(jsonResposne).forEach(
        (cryptoCoin) => cryptoCoinList.add(CryptoCoin.fromJSON(cryptoCoin)));

    return cryptoCoinList;
  }
}
