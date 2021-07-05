import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Davit!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
            Text(
              'It\'s a wonderful day to hold crypto',
              style: TextStyle(
                color: Colors.white60,
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          child: Icon(
            Icons.account_circle,
            color: Colors.white70,
            size: 40,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF16163F),
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ],
    );
  }
}
