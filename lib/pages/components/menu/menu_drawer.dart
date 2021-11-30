// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:w_1/pages/components/menu/menu_item.dart';
import 'package:w_1/utils/color.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share_rounded,
                    color: kPrimaryColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.message_rounded,
                    color: kPrimaryColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_rounded,
                    color: kPrimaryColor,
                  )),
              Container(
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: const Icon(Icons.person_rounded),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          MenuItem(
            title: "Work",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          MenuItem(
            title: "Freelancers",
            press: () {},
          ),
        ],
      ),
    );
  }
}
