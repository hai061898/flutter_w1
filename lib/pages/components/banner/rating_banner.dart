// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:w_1/utils/color.dart';

class RatingBanner extends StatelessWidget {
  const RatingBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Professional on\nTalentHunt rate clients",
                style: TextStyle(
                  height: 0.8,
                  fontSize: 56,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "4.5/5",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "on average from 2M+ reviews",
                style: TextStyle(
                  fontSize: 23,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
