// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:w_1/pages/components/banner/banner.dart';
import 'package:w_1/pages/components/menu/menu.dart';
import 'package:w_1/pages/components/menu/menu_drawer.dart';
import 'package:w_1/utils/color.dart';
import 'package:w_1/utils/layout.dart';
import 'package:w_1/utils/responsive.dart';

import 'components/content_section.dart';
import 'components/sidebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: const Icon(
                    Icons.api_rounded,
                    size: 50,
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 3,
              color: kPrimaryColor,
            ),
            MenuDrawer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          Menu(),
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  constraints: BoxConstraints(maxWidth: kmaxWidth),
                  child: Column(
                    children: [
                      BannerCustom(),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Expanded(
                            flex: 5,
                            child: ContentSection(),
                          ),
                          if (Responsive.isDesktop(context))
                            Expanded(
                              child: SideBar(),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
