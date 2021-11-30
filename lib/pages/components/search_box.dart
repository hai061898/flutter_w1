// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:w_1/utils/color.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
          color: kSecondaryColor, borderRadius: BorderRadius.circular(20.0)),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            )),
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
