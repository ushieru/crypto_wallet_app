import 'package:flutter/material.dart';

class MIconButton extends StatelessWidget {
  final IconData icon;
  final String name;

  const MIconButton({Key? key, required this.icon, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(bottom: 10),
          child: Icon(
            icon,
            color: Colors.white70,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF242458),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        Text(
          name,
          style: TextStyle(color: Colors.white70),
        ),
      ],
    );
  }
}
