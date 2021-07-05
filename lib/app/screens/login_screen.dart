import 'package:crypto_wallet_app/app/screens/home_screen.dart';
import 'package:crypto_wallet_app/app/utils/size_config.dart';
import 'package:crypto_wallet_app/app/widgets/login_background.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static final String routeName = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      body: Stack(
        children: [
          LoginBackground(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Keep crypto in the most trusted place!',
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'With us your crypto is protected, we have over 15 million users and all of them are satisfied!',
                    style: TextStyle(
                      color: Colors.white30,
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    height: 250,
                    child: Image.asset(
                      'lib/app/assets/wallet.png',
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Scan your fingerprint to sign in',
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () => Navigator.pushNamedAndRemoveUntil(
                        context, HomeScreen.routeName, (route) => false),
                    child: Icon(
                      Icons.fingerprint,
                      color: Colors.white70,
                      size: 80,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
