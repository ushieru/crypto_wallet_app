import 'package:crypto_wallet_app/context/crypto/model/crypto_coin.dart';
import 'package:crypto_wallet_app/context/crypto/services/http_crypto_service.dart';
import 'package:flutter/material.dart';

class CryptoData extends StatelessWidget {
  const CryptoData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 50, bottom: 20, left: 40, right: 40),
        child: FutureBuilder(
          future: HTTPCryptoService().getCoins(),
          builder:
              (BuildContext context, AsyncSnapshot<List<CryptoCoin>> snapshot) {
            if (snapshot.hasData) {
              final list = snapshot.data ?? [];
              return ListView(
                children: List.generate(
                  list.length,
                  (index) => Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 60,
                          width: 60,
                          child: ClipOval(
                            child: Image.network(list[index].image),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF37356A),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              list[index].symbol.toUpperCase(),
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(
                            '\$ ${list[index].currentPrice}',
                            style: TextStyle(color: Colors.white70),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF010030),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }

            return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF0E0D30)),
              ),
            );
          },
        ),
        decoration: BoxDecoration(
          color: Color(0xFF242556),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          ),
        ),
      ),
    );
  }
}
