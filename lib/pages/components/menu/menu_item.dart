// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

