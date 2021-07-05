import 'package:crypto_wallet_app/app/utils/size_config.dart';
import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
      color: Color(0xFF010030),
      child: Container(
        height: SizeConfig.safeBlockSizeVertical(55),
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Color(0xFF191849),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100),
            bottomRight: Radius.circular(100),
          ),
        ),
      ),
    );
  }
}
