// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:w_1/utils/color.dart';

import 'info_banner.dart';
import 'rating_banner.dart';

class BannerCustom extends StatelessWidget {
  const BannerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: MediaQuery.of(context).size.width >= 650
          ? Row(
              children: [
                Expanded(
                  child: InfoBanner(),
                ),
                Expanded(
                  child: RatingBanner(),
                ),
              ],
            )
          : Column(
              children: [
                InfoBanner(),
                SizedBox(
                  height: 20,
                ),
                RatingBanner(),
              ],
            ),
    );
  }
}
