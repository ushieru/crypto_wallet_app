import 'package:crypto_wallet_app/app/widgets/icon_button.dart';
import 'package:crypto_wallet_app/app/utils/size_config.dart';
import 'package:crypto_wallet_app/app/widgets/crypto_data.dart';
import 'package:crypto_wallet_app/app/widgets/welcome_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        color: Color(0xFF0E0D30),
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      WelcomeHeader(),
                      SizedBox(height: 30),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: 50,
                              child: Icon(
                                Icons.search,
                                color: Colors.white60,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 45,
                                child: TextField(
                                  style: TextStyle(color: Colors.white60),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search',
                                    hintStyle: TextStyle(color: Colors.white60),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 45,
                              child: Icon(
                                Icons.filter_list,
                                color: Colors.white60,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFF252657),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF16163F),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Expanded(
                  child: Container(
                    width: SizeConfig.screenWidth,
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Text(
                          'Balance:',
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '\$154,135,453.57',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MIconButton(
                              icon: Icons.send,
                              name: 'Send',
                            ),
                            MIconButton(
                              icon: Icons.add_shopping_cart,
                              name: 'Receive',
                            ),
                            MIconButton(
                              icon: Icons.add_shopping_cart,
                              name: 'Buy',
                            ),
                            MIconButton(
                              icon: Icons.attach_money,
                              name: 'Sell',
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        CryptoData(),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF16163F),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
