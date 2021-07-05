import 'package:crypto_wallet_app/app/screens/home_screen.dart';
import 'package:crypto_wallet_app/app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class CryptoWalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Wallet App',
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}
