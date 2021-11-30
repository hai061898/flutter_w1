// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:w_1/utils/color.dart';

class Category extends StatelessWidget {
  const Category({Key? key, this.category}) : super(key: key);
  final List? category;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(
        horizontal: 2.0,
      ),
      decoration: BoxDecoration(
        color: kcateColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Text(
        category.toString(),
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
