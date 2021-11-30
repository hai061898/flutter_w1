// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:w_1/utils/color.dart';
import 'package:auto_size_text/auto_size_text.dart';

class InfoBanner extends StatelessWidget {
  const InfoBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            "Find the best UI/UX\nDesigners jobs",
            maxLines: 2,
            style: TextStyle(
                height: 0.8,
                fontSize: 56,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "It takes just one job to develop a successful relationship that can propel your career forward.",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              MaterialButton(
                color: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Text(
                    "Find Work",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Expanded(
                child: const Text(
                  "Want to hire a Web Designer?",
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
