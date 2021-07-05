import 'package:crypto_wallet_app/context/crypto/model/crypto_coin.dart';

abstract class CryptoCoinRepository {
  Future<List<CryptoCoin>> getCoins();
}