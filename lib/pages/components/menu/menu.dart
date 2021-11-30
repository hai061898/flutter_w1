// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:w_1/utils/color.dart';
import 'package:w_1/utils/layout.dart';

import 'menu_item.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kSecondaryColor,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            constraints: BoxConstraints(maxWidth: kmaxWidth),
            child: Column(
              children: [
                MediaQuery.of(context).size.width <= 650
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Builder(
                                  builder: (context) => IconButton(
                                      onPressed: () {
                                        Scaffold.of(context).openDrawer();
                                      },
                                      icon: Icon(
                                        Icons.menu,
                                        color: kPrimaryColor,
                                      ))),
                              SizedBox(
                                width: 8.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: const Icon(Icons.api_rounded),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: const Icon(Icons.person_rounded),
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Icon(Icons.api_rounded),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          MenuItem(
                            title: "Work",
                            press: () {},
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          MenuItem(
                            title: "Freelancers",
                            press: () {},
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.share_rounded,
                                color: kPrimaryColor,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
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
                            child: Icon(Icons.person_rounded),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

